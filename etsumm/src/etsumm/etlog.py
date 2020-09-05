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
    from etsumm.environment import env
    if level is None:
        level = env.LOGLVL
    logger = logging.getLogger('etsumm')
    logger.setLevel(env.LOGLVL)
    logger.log(level, msg, **kwargs)
