resource "genesyscloud_integration_action" "action" {
    name           = var.action_name
    category       = var.action_category
    integration_id = var.integration_id
    secure         = var.secure_data_action
    
    contract_input  = jsonencode({
        "$schema" = "http://json-schema.org/draft-04/schema#",
        "additionalProperties" = true,
        "description" = "Check Emergency Group Status",
        "properties" = {
            "emergencyGroup_ID" = {
                "description" = "Emergency Group ID",
                "type" = "string"
            }
        },
        "title" = "GET EmergencyGroup info",
        "type" = "object"
    })
    contract_output = jsonencode({
        "$schema" = "http://json-schema.org/draft-04/schema#",
        "additionalProperties" = true,
        "properties" = {
            "emergencyGroup_Ids" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "emergencyGroup_Name" = {
                "type" = "string"
            },
            "enabled" = {
                "type" = "boolean"
            },
            "ivrId1" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId10" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId11" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId12" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId13" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId14" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId15" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId16" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId17" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId18" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId19" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId2" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId20" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId3" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId4" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId5" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId6" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId7" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId8" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            },
            "ivrId9" = {
                "items" = {
                    "type" = "string"
                },
                "type" = "array"
            }
        },
        "type" = "object"
    })
    
    config_request {
        request_template     = "$${input.rawRequest}"
        request_type         = "GET"
        request_url_template = "/api/v2/architect/emergencygroups/$${input.emergencyGroup_ID}"
        headers = {
			UserAgent = "PureCloudIntegrations/1.0"
			Content-Type = "application/json"
		}
    }

    config_response {
        success_template = "{\r\n\"emergencyGroup_Name\": $${emFlowName},\r\n\"emergencyGroup_Ids\": $${emFlowIds},\r\n\"enabled\" : $${enabled},\r\n\"ivrId1\": $${ivrId1},\r\n\"ivrId2\": $${ivrId2},\r\n\"ivrId3\": $${ivrId3},\r\n\"ivrId4\": $${ivrId4},\r\n\"ivrId5\": $${ivrId5},\r\n\"ivrId6\": $${ivrId6},\r\n\"ivrId7\": $${ivrId7},\r\n\"ivrId8\": $${ivrId8},\r\n\"ivrId9\": $${ivrId9},\r\n\"ivrId10\": $${ivrId10},\r\n\"ivrId11\": $${ivrId11},\r\n\"ivrId12\": $${ivrId12},\r\n\"ivrId13\": $${ivrId13},\r\n\"ivrId14\": $${ivrId14},\r\n\"ivrId15\": $${ivrId15},\r\n\"ivrId16\": $${ivrId16},\r\n\"ivrId17\": $${ivrId17},\r\n\"ivrId18\": $${ivrId18},\r\n\"ivrId19\": $${ivrId19},\r\n\"ivrId20\": $${ivrId20}\r\n}"
        translation_map = { 
			emFlowName = "$.name"
			ivrId10 = "$.emergencyCallFlows[9].ivrs[*].id"
			ivrId20 = "$.emergencyCallFlows[19].ivrs[*].id"
			enabled = "$.enabled"
			emFlowIds = "$.emergencyCallFlows[*].emergencyFlow.id"
			ivrId14 = "$.emergencyCallFlows[13].ivrs[*].id"
			ivrId1 = "$.emergencyCallFlows[0].ivrs[*].id"
			ivrId13 = "$.emergencyCallFlows[12].ivrs[*].id"
			ivrId2 = "$.emergencyCallFlows[1].ivrs[*].id"
			ivrId12 = "$.emergencyCallFlows[11].ivrs[*].id"
			ivrId3 = "$.emergencyCallFlows[2].ivrs[*].id"
			ivrId11 = "$.emergencyCallFlows[10].ivrs[*].id"
			ivrId4 = "$.emergencyCallFlows[3].ivrs[*].id"
			ivrId18 = "$.emergencyCallFlows[17].ivrs[*].id"
			ivrId5 = "$.emergencyCallFlows[4].ivrs[*].id"
			ivrId17 = "$.emergencyCallFlows[16].ivrs[*].id"
			ivrId6 = "$.emergencyCallFlows[5].ivrs[*].id"
			ivrId16 = "$.emergencyCallFlows[15].ivrs[*].id"
			ivrId7 = "$.emergencyCallFlows[6].ivrs[*].id"
			ivrId15 = "$.emergencyCallFlows[14].ivrs[*].id"
			ivrId8 = "$.emergencyCallFlows[7].ivrs[*].id"
			ivrId9 = "$.emergencyCallFlows[8].ivrs[*].id"
			ivrId19 = "$.emergencyCallFlows[18].ivrs[*].id"
		}
        translation_map_defaults = {       
			emFlowName = "\"none\""
			ivrId10 = "[]"
			ivrId20 = "[]"
			emFlowIds = "[]"
			ivrId14 = "[]"
			ivrId1 = "[]"
			ivrId13 = "[]"
			ivrId2 = "[]"
			ivrId12 = "[]"
			ivrId3 = "[]"
			ivrId11 = "[]"
			ivrId4 = "[]"
			ivrId18 = "[]"
			ivrId5 = "[]"
			ivrId17 = "[]"
			ivrId6 = "[]"
			ivrId16 = "[]"
			ivrId7 = "[]"
			ivrId15 = "[]"
			ivrId8 = "[]"
			ivrId9 = "[]"
			ivrId19 = "[]"
		}
    }
}