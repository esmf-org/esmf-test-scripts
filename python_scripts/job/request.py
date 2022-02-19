import abc
from typing import Iterable
import yaml


class Base(abc.ABC):
    def __init__(self, type, **entries):
        self.type = type
        self.__dict__.update(entries)

    def __repr__(self):
        return f"<{self.__class__.__name__}/>"

    def __getattr__(self, item):
        return self[item]

    def __str__(self):
        return str(self.__dict__)

    def __dir__(self) -> Iterable[str]:
        return [str(k) for k in self.__dict__]


class JobRequest(Base):
    @property
    def compilers(self):
        for item in self.__dict__["compiler"]:
            yield Compiler(item, **self.__getattribute__(item))


class Compiler(Base):
    @property
    def versions(self):
        for item in self.__dict__["versions"]:
            yield Version(item, **self.__dict__["versions"][item])


class Version(Base):
    """the lowest leaf in the yaml file"""


def read_yaml():
    with open("./tests/fixtures/cheyenne.yaml") as _file:
        return JobRequest("JOB", **yaml.safe_load(_file))
