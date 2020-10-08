import json
import os

from jsonschema import validate
from sqlalchemy import create_engine, MetaData, Column, Integer, ForeignKey, Text, Float, JSON, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, relationship
# connstr = 'sqlite://'
# connstr = 'postgresql://bkoziol:<password>@localhost/<database>'
# connstr = 'postgresql://{user}:{password}@{host}/{database}'
## four slashes for absolute paths - three for relative
# connstr = 'sqlite:///{0}'.format(os.environ['LOGP_DBPATH'])
from sqlalchemy.orm.exc import NoResultFound

from etsumm.db.schema import result_schema

metadata = MetaData()
Base = declarative_base(metadata=metadata)
Session = sessionmaker()


def initdb(dbpath, create=False):
    connstr = 'sqlite:///{0}'.format(dbpath)
    engine = create_engine(connstr)
    metadata.bind = engine
    Session.configure(bind=engine)
    if create:
        metadata.create_all(checkfirst=True)
    return engine


def get_or_create(session, model, should_add=True, should_commit=True, **kwargs):
    try:
        obj = session.query(model).filter_by(**kwargs).one()
    except NoResultFound:
        obj = model(**kwargs)
        if should_add:
            session.add(obj)
        if should_commit:
            session.commit()
    return obj


class Platform(Base):
    __tablename__ = 'platform'
    id = Column(Integer, primary_key=True)
    name = Column(Text, nullable=False, unique=True)


class SummaryVersion(Base):
    __tablename__ = "summary_version"
    id = Column(Integer, primary_key=True)
    summary_version = Column(Float, nullable=False, unique=True)


class TagLine(Base):
    __tablename__ = "tagline"
    id = Column(Integer, primary_key=True)
    value = Column(Text, primary_key=True, unique=True)


class Result(Base):
    __tablename__ = "result"
    id = Column(Integer, primary_key=True)
    summary_version_id = Column(ForeignKey('summary_version.id'), nullable=False)
    platform_id = Column(ForeignKey('platform.id'), nullable=False)
    tagline_id = Column(ForeignKey('tagline.id'), nullable=False)

    creation_datetime = Column(DateTime, nullable=False)
    run_start_time = Column(DateTime, nullable=False)
    run_stop_time = Column(DateTime, nullable=False)
    walltime_secs = Column(Integer, nullable=False)  # Amount of time allotted for run
    summary = Column(JSON, nullable=True, unique=False)
    artifacts = Column(Text, nullable=True, unique=False)
    artifacts_creation_path = Column(Text, nullable=True, unique=False)

    platform = relationship("Platform")
    summary_version = relationship("SummaryVersion")
    tagline = relationship("TagLine")

    @classmethod
    def create(cls, result_json, artifacts):
        with open(result_json, 'r') as f:
            result = json.load(f)
        validate(instance=result, schema=result_schema)
        assert os.path.exists(artifacts)
