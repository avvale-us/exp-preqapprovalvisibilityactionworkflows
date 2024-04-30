{
	"contents": {
		"23915af4-288d-4127-8059-269c10ca4b8c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "RestartProcurementApprovalRequest",
			"subject": "Restart Purchase Requisition ${context.ID} ${context.ItemNumber} Approval Process",
			"businessKey": "",
			"name": "RestartProcurementApprovalRequest",
			"documentation": "Restart Procurement Approval request if the workflow is in Critical status.",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"4654cf9e-1d90-43a7-ad44-77f7f631c8fa": {
					"name": "Get workflow context"
				},
				"665d8969-fbe9-4760-9fd5-742ef18d7493": {
					"name": "Get Line Item Context"
				},
				"7b8a608b-83d6-4f5f-8480-79624b002cf4": {
					"name": "Prepare Input Payload for New approval process"
				},
				"4c87dfbd-5497-4b46-b82f-641ce7f351cb": {
					"name": "Start new approval process"
				},
				"1a76276d-b7d7-4e49-aa44-f440ed226dce": {
					"name": "Cancel Approval Workflow"
				},
				"0bf2267a-6f96-45e2-9611-32a141437e3d": {
					"name": "Notify Buyer"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"a42ee5fa-2b6d-4dd1-84a2-0a2c447bdc4b": {
					"name": "SequenceFlow2"
				},
				"cd0a8350-b874-4d83-af1f-93062fe49da1": {
					"name": "SequenceFlow4"
				},
				"812fa7f2-2948-4a84-b605-77867c37b4e6": {
					"name": "SequenceFlow8"
				},
				"ec4c40db-077a-4b81-a299-dc71670a4b3b": {
					"name": "SequenceFlow9"
				},
				"fc8d2b7f-ae3b-4ee4-a568-c8695429c686": {
					"name": "SequenceFlow10"
				},
				"5c601bb4-254a-4ba6-b3de-576331bf19e4": {
					"name": "SequenceFlow11"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"4654cf9e-1d90-43a7-ad44-77f7f631c8fa": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask1",
			"name": "Get workflow context"
		},
		"665d8969-fbe9-4760-9fd5-742ef18d7493": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask2",
			"name": "Get Line Item Context"
		},
		"7b8a608b-83d6-4f5f-8480-79624b002cf4": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/RestartApprovalProcess/PrepareStartApprovalProcessInputPayload.js",
			"id": "scripttask1",
			"name": "Prepare Input Payload for New approval process"
		},
		"4c87dfbd-5497-4b46-b82f-641ce7f351cb": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "WorkflowActions",
			"path": "/v1/workflow-instances",
			"httpMethod": "POST",
			"requestVariable": "${context.NewWorkflowContext}",
			"responseVariable": "${context.NewWorkflowContext.Response}",
			"id": "servicetask4",
			"name": "Start new approval process",
			"principalPropagationRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"1a76276d-b7d7-4e49-aa44-f440ed226dce": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "WorkflowActions",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.WorkflowCancelRequest}",
			"responseVariable": "${context.WorkflowCancelResponse}",
			"id": "servicetask5",
			"name": "Cancel Approval Workflow",
			"principalPropagationRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"0bf2267a-6f96-45e2-9611-32a141437e3d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Notify Buyer",
			"mailDefinitionRef": "ae371b2f-484f-44d6-8016-3f478c0199a6"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "4654cf9e-1d90-43a7-ad44-77f7f631c8fa"
		},
		"a42ee5fa-2b6d-4dd1-84a2-0a2c447bdc4b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "4654cf9e-1d90-43a7-ad44-77f7f631c8fa",
			"targetRef": "665d8969-fbe9-4760-9fd5-742ef18d7493"
		},
		"cd0a8350-b874-4d83-af1f-93062fe49da1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "7b8a608b-83d6-4f5f-8480-79624b002cf4",
			"targetRef": "4c87dfbd-5497-4b46-b82f-641ce7f351cb"
		},
		"812fa7f2-2948-4a84-b605-77867c37b4e6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "665d8969-fbe9-4760-9fd5-742ef18d7493",
			"targetRef": "7b8a608b-83d6-4f5f-8480-79624b002cf4"
		},
		"ec4c40db-077a-4b81-a299-dc71670a4b3b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "4c87dfbd-5497-4b46-b82f-641ce7f351cb",
			"targetRef": "1a76276d-b7d7-4e49-aa44-f440ed226dce"
		},
		"fc8d2b7f-ae3b-4ee4-a568-c8695429c686": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "1a76276d-b7d7-4e49-aa44-f440ed226dce",
			"targetRef": "0bf2267a-6f96-45e2-9611-32a141437e3d"
		},
		"5c601bb4-254a-4ba6-b3de-576331bf19e4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "0bf2267a-6f96-45e2-9611-32a141437e3d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"ccd92e56-e29f-4500-90ab-d274ba921787": {},
				"446146db-a151-4f65-947c-4d31d2edf748": {},
				"86bffd60-81b6-4ada-9f16-022fe0a5a27f": {},
				"9e451a87-0b3d-4a72-b7b5-fa2538cda4f7": {},
				"421ab4ea-f907-4b8b-9420-95bb9ff34927": {},
				"9e6f3f2e-d87b-48ee-8b31-b1950c9f22d3": {},
				"137bac19-c698-4453-a9d8-201634098fad": {},
				"7aace4aa-fa9a-4f18-931f-0b308ca83e70": {},
				"a34a1761-f1d1-4698-83ab-011fcd65e4a1": {},
				"1995cb3f-add2-4321-aa45-aca9c63d3272": {},
				"3e1b7314-d8d5-4252-9343-4264b7df38fa": {},
				"182c34d8-7a6f-4953-ad33-bda3e12548b8": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 121,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1051,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,115.875 226.24147286593848,115.875",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "ccd92e56-e29f-4500-90ab-d274ba921787",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"ccd92e56-e29f-4500-90ab-d274ba921787": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 176.24147286593848,
			"y": 85.75,
			"width": 100,
			"height": 60,
			"object": "4654cf9e-1d90-43a7-ad44-77f7f631c8fa"
		},
		"446146db-a151-4f65-947c-4d31d2edf748": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "226.24147286593848,115.6875 342.37073643296924,115.6875",
			"sourceSymbol": "ccd92e56-e29f-4500-90ab-d274ba921787",
			"targetSymbol": "86bffd60-81b6-4ada-9f16-022fe0a5a27f",
			"object": "a42ee5fa-2b6d-4dd1-84a2-0a2c447bdc4b"
		},
		"86bffd60-81b6-4ada-9f16-022fe0a5a27f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 292.37073643296924,
			"y": 85.625,
			"width": 100,
			"height": 60,
			"object": "665d8969-fbe9-4760-9fd5-742ef18d7493"
		},
		"9e451a87-0b3d-4a72-b7b5-fa2538cda4f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 461.4353682164847,
			"y": 85.5625,
			"width": 100,
			"height": 60,
			"object": "7b8a608b-83d6-4f5f-8480-79624b002cf4"
		},
		"421ab4ea-f907-4b8b-9420-95bb9ff34927": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "511.4353682164847,115.546875 631.9676841082423,115.546875",
			"sourceSymbol": "9e451a87-0b3d-4a72-b7b5-fa2538cda4f7",
			"targetSymbol": "9e6f3f2e-d87b-48ee-8b31-b1950c9f22d3",
			"object": "cd0a8350-b874-4d83-af1f-93062fe49da1"
		},
		"9e6f3f2e-d87b-48ee-8b31-b1950c9f22d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 581.9676841082423,
			"y": 85.53125,
			"width": 100,
			"height": 60,
			"object": "4c87dfbd-5497-4b46-b82f-641ce7f351cb"
		},
		"137bac19-c698-4453-a9d8-201634098fad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "342.37073643296924,115.625 479,115.625",
			"sourceSymbol": "86bffd60-81b6-4ada-9f16-022fe0a5a27f",
			"targetSymbol": "9e451a87-0b3d-4a72-b7b5-fa2538cda4f7",
			"object": "812fa7f2-2948-4a84-b605-77867c37b4e6"
		},
		"7aace4aa-fa9a-4f18-931f-0b308ca83e70": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "631.9676841082423,115.5234375 812.7338420541212,115.5234375",
			"sourceSymbol": "9e6f3f2e-d87b-48ee-8b31-b1950c9f22d3",
			"targetSymbol": "a34a1761-f1d1-4698-83ab-011fcd65e4a1",
			"object": "ec4c40db-077a-4b81-a299-dc71670a4b3b"
		},
		"a34a1761-f1d1-4698-83ab-011fcd65e4a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 762.7338420541212,
			"y": 85.515625,
			"width": 100,
			"height": 60,
			"object": "1a76276d-b7d7-4e49-aa44-f440ed226dce"
		},
		"1995cb3f-add2-4321-aa45-aca9c63d3272": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "812.7338420541212,115.51171875 942.1169210270606,115.51171875",
			"sourceSymbol": "a34a1761-f1d1-4698-83ab-011fcd65e4a1",
			"targetSymbol": "3e1b7314-d8d5-4252-9343-4264b7df38fa",
			"object": "fc8d2b7f-ae3b-4ee4-a568-c8695429c686"
		},
		"3e1b7314-d8d5-4252-9343-4264b7df38fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 892.1169210270606,
			"y": 85.5078125,
			"width": 100,
			"height": 60,
			"object": "0bf2267a-6f96-45e2-9611-32a141437e3d"
		},
		"182c34d8-7a6f-4953-ad33-bda3e12548b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "942.1169210270606,115.50390625 1068.5,115.50390625",
			"sourceSymbol": "3e1b7314-d8d5-4252-9343-4264b7df38fa",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5c601bb4-254a-4ba6-b3de-576331bf19e4"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 11,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 5,
			"scripttask": 1,
			"mailtask": 1
		},
		"ae371b2f-484f-44d6-8016-3f478c0199a6": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "Restart of Approval Process for Purchase requisition ${context.ID}",
			"text": "Dear User,\n\nApproval Process for Purchase requisition ${context.ID} was Restarted by Process Administrator.\n\nThis is an automatically created message.",
			"id": "maildefinition1"
		}
	}
}