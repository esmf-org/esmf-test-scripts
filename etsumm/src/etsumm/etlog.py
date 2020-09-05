import logging


def config():
    from etsumm.environment import env

    handlers = [logging.StreamHandler()]
    if env.LOGPATH is not None:
        handlers.append(logging.FileHandler(env.LOGPATH, mode='w'))
    logging.basicConfig(
        level=env.LOGLVL,
        format='[%(name)s][%(levelname)s][%(asctime)s]:: %(message)s',
        datefmt='%Y-%m-%d %H:%M:%S',
        handlers=handlers)


def log(msg, level=None, **kwargs):
    if level is None:
        from etsumm.environment import env
        level = env.LOGLVL
    logger = logging.getLogger('etsumm')
    logger.log(level, msg, **kwargs)
