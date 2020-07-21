result_schema = {
    "type": "object",
    "properties": {
        "platform":        {"type": "string"},
        "summary_version": {"type": "number"},
        "tagline":         {"type": "string"},
        "run_start_time":  {"type": "string"},
        "run_stop_time":   {"type": "string"},
        "walltime_secs":   {"type": "integer"},
        "artifacts":       {"type": "string"}
    },
    "required": ["platform", "summary_version", "tagline", "run_start_time",
                 "run_stop_time", "walltime_secs", "artifacts"]
}
