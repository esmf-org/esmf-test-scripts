import jsonschema

RESULT_SCHEMA = {
    "type": "object",
    "properties": {
        "branch":        {"type": "string"},
        "platform":      {"type": "string"},
        "compiler":      {"type": "string"},
        "optimization":  {"type": "string"},
        "comm":          {"type": "string"},
    },
    "required": ["branch", "platform", "compiler", "optimization", "comm"]
}

class Parser(object):

    def __init__(self, config):
        self.config = config
        jsonschema.validate(instance=config, schema=RESULT_SCHEMA)

    def initialize(self):
        pass

    def run(self):
        pass

    def finalize(self):
        pass
