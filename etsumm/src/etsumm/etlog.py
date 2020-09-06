import logging
import os


class MyLog(object):

    def __init__(self):
        self.root_name = 'etsumm'
        self.level = None
        self.loggers = None
        self.null = True
        self.parent = None

    def __call__(self, msg=None, logger=None, level=logging.INFO, exc=None):
        if self.null:
            if exc is None or level == logging.WARN:
                pass
            else:
                raise exc
        else:
            dest_level = level or self.level
            # get the logger by string name
            if isinstance(logger, str):
                dest_logger = self.get_logger(logger)
            else:
                dest_logger = logger or self.parent
            if exc is None:
                dest_logger.log(dest_level, msg)
            else:
                if level == logging.WARN:
                    wmsg = '{0}: {1}'.format(exc.__class__.__name__, str(exc))
                    dest_logger.warning(wmsg)
                else:
                    dest_logger.exception(msg)
                    raise exc

    def configure(self, to_file=None, to_stream=False, level=logging.INFO):
        # No logging to file or stdout. There is nothing to configure.
        if to_file is not None or to_stream:
            self.level = level
            self.null = False
            # Log to null if there is no file present.
            if to_file is None:
                filename = os.devnull
            else:
                filename = to_file
            # This is the root logger.
            self.loggers = {}
            self.parent = logging.getLogger(self.root_name)
            self.parent.parent = None
            self.parent.setLevel(level)
            self.parent.handlers = []
            # Always configure the file handler. This goes to to null if there is no file path.
            fh = logging.FileHandler(filename, 'w')
            fh.setLevel(level)
            fh.setFormatter(
                logging.Formatter(fmt='[%(asctime)s][%(levelname)s][%(name)s] %(message)s',
                                  datefmt='%Y-%m-%d %H:%M:%S'))
            self.parent.addHandler(fh)
            # This is the stdout logger.
            if to_stream:
                console = logging.StreamHandler()
                console.setLevel(level)
                console.setFormatter(logging.Formatter(
                    fmt='[%(asctime)s][%(levelname)s][%(name)s] %(message)s',
                    datefmt='%Y-%m-%d %H:%M:%S'))
                self.parent.addHandler(console)

    def get_logger(self, name):
        if self.null:
            ret = None
        else:
            ret = logging.getLogger(self.root_name).getChild(name)
        return ret

    def shutdown(self):
        self.__init__()
        try:
            logging.shutdown()
            logging.captureWarnings(None)
        except:
            pass


log = MyLog()