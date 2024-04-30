var details = {
    "SubStatus": $.context.SubStatus
};


var rulePayload = {
    "RuleServiceId": "781e57acca554c8c9d707e0546600aaf",
    "RuleServiceRevision": "2108",
    "Vocabulary": [
        {
            "ProcessSubStatus": details
        }
    ]
};

$.context.DetermineAdminRuleRequest = rulePayload;