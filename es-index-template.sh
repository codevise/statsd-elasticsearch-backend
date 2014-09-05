curl -XPUT localhost:9200/_template/statsd-template -d '
{
    "template" : "statsd-*",
    "settings" : {
        "number_of_shards" : 1
    },
    "mappings" : {
        "counter" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "format": "dateOptionalTime",
                    "type": "date"
                },
                "value": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "namespace": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "group": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "target": {
                    "type": "string",
                    "index": "not_analyzed"
                },
		"account": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "key": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "type": {
                    "type": "string",
                    "index": "not_analyzed"
                },
		
            }
        },
        "timer" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "format": "dateOptionalTime",
                    "type": "date"
                },
                "val": {
                    "type": "long",
                    "index": "not_analyzed"
                },
                "ns": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "grp": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "tgt": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "act": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        },
        "timer_data" : {
            "_source" : { "enabled" : true },
            "properties": {
                "@timestamp": {
                    "format": "dateOptionalTime",
                    "type": "date"
                },
                "count_ps": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "count": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "upper": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "lower": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "mean": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "median": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "mean": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "upper": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "std": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                 "sum": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "mean_90": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "upper_90": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "sum_90": {
                    "type": "float",
                    "index": "not_analyzed"
                },
                "ns": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "grp": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "tgt": {
                    "type": "string",
                    "index": "not_analyzed"
                },
                "act": {
                    "type": "string",
                    "index": "not_analyzed"
                }
            }
        }
    }
}'
