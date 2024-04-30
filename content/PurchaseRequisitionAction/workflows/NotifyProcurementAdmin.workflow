{
	"contents": {
		"693cd178-01b6-47a4-965f-ab600a48136d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "NotifyProcurmentAdministrator",
			"subject": "Notify Process Administrator - Purchase Requisition ${context.ID} ${context.ItemNumber}",
			"name": "NotifyProcurementAdministrator",
			"documentation": "Notify the process administrators of procurement when the approval workflow substatus (Failed, Suspended, Overdue,Risk) is changing.",
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
				"7164ef21-635a-478d-80ba-19eb7b42ea10": {
					"name": "Notify Administrator"
				},
				"1abef03d-df86-4e75-8221-96a5a1bac7b9": {
					"name": "Get Workflow context"
				},
				"0ed9f1f2-c439-4582-8f2f-83cc111a75c5": {
					"name": "Get Line Item Context"
				},
				"d2b3ebcd-826c-4c54-974b-c997e45222b3": {
					"name": "Get errors"
				},
				"fc671350-289e-4799-85a6-0ab6470d64f1": {
					"name": "Prepare error context"
				},
				"3dda969e-e586-456f-bf84-2871f500d095": {
					"name": "Prepare Determine Admin Rule Input body"
				},
				"3c30646f-f520-4a86-b767-c1961016a69a": {
					"name": "Get Process Administrator data"
				},
				"7a433b74-638b-4268-aebe-d9530db518c4": {
					"name": "SubStatus = FAILED?"
				},
				"84296e1f-3281-4b0e-9007-90df394252e3": {
					"name": "Notify Administrator"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"37309036-8df7-43a5-b2b2-7a4557f27aca": {
					"name": "SequenceFlow2"
				},
				"b02bfb29-43f5-4eb6-bc69-d8eec7cb9cee": {
					"name": "SequenceFlow3"
				},
				"05fa994d-c645-47f8-b0bc-b3688a4b923c": {
					"name": "SequenceFlow4"
				},
				"3d680c62-9895-479d-850e-d07c4d501350": {
					"name": "SequenceFlow5"
				},
				"85cce060-02f8-46bf-8658-29b74607ad34": {
					"name": "SequenceFlow6"
				},
				"0090af92-78fa-494c-a7c3-44f3fd99b156": {
					"name": "SequenceFlow7"
				},
				"9db1aab1-a7aa-419c-bdf0-be14844c4f86": {
					"name": "SequenceFlow8"
				},
				"1eb805b7-19ad-41b7-a84b-3fff99c22764": {
					"name": "PROCESS_FAILED"
				},
				"a8d3ae7d-f076-4987-bc86-55cb6f121933": {
					"name": "other"
				},
				"c3eaef60-b8e8-49e8-b23d-cfe47444a3a4": {
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
		"7164ef21-635a-478d-80ba-19eb7b42ea10": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Notify Administrator",
			"mailDefinitionRef": "0524c1a2-4a8b-4cd4-a1c7-ee3e35200231"
		},
		"1abef03d-df86-4e75-8221-96a5a1bac7b9": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask1",
			"name": "Get Workflow context"
		},
		"0ed9f1f2-c439-4582-8f2f-83cc111a75c5": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask2",
			"name": "Get Line Item Context"
		},
		"d2b3ebcd-826c-4c54-974b-c997e45222b3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/error-messages",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowErrors}",
			"id": "servicetask3",
			"name": "Get errors"
		},
		"fc671350-289e-4799-85a6-0ab6470d64f1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/NotifyAdmin/PrepareErrorContext.js",
			"id": "scripttask1",
			"name": "Prepare error context"
		},
		"3dda969e-e586-456f-bf84-2871f500d095": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/NotifyAdmin/PrepareDetermineAdminRuleInputBody.js",
			"id": "scripttask2",
			"name": "Prepare Determine Admin Rule Input body"
		},
		"3c30646f-f520-4a86-b767-c1961016a69a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BusinessRules",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.DetermineAdminRuleRequest}",
			"responseVariable": "${context.DetermineAdminRuleResponse}",
			"id": "servicetask4",
			"name": "Get Process Administrator data"
		},
		"7a433b74-638b-4268-aebe-d9530db518c4": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "SubStatus = FAILED?",
			"default": "a8d3ae7d-f076-4987-bc86-55cb6f121933"
		},
		"84296e1f-3281-4b0e-9007-90df394252e3": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Notify Administrator",
			"mailDefinitionRef": "9cf26e2e-a607-4c46-a77a-73fe937a17d7"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "1abef03d-df86-4e75-8221-96a5a1bac7b9"
		},
		"37309036-8df7-43a5-b2b2-7a4557f27aca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "7164ef21-635a-478d-80ba-19eb7b42ea10",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"b02bfb29-43f5-4eb6-bc69-d8eec7cb9cee": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "1abef03d-df86-4e75-8221-96a5a1bac7b9",
			"targetRef": "0ed9f1f2-c439-4582-8f2f-83cc111a75c5"
		},
		"05fa994d-c645-47f8-b0bc-b3688a4b923c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "0ed9f1f2-c439-4582-8f2f-83cc111a75c5",
			"targetRef": "3dda969e-e586-456f-bf84-2871f500d095"
		},
		"3d680c62-9895-479d-850e-d07c4d501350": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "d2b3ebcd-826c-4c54-974b-c997e45222b3",
			"targetRef": "fc671350-289e-4799-85a6-0ab6470d64f1"
		},
		"85cce060-02f8-46bf-8658-29b74607ad34": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "fc671350-289e-4799-85a6-0ab6470d64f1",
			"targetRef": "7164ef21-635a-478d-80ba-19eb7b42ea10"
		},
		"0090af92-78fa-494c-a7c3-44f3fd99b156": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "3dda969e-e586-456f-bf84-2871f500d095",
			"targetRef": "3c30646f-f520-4a86-b767-c1961016a69a"
		},
		"9db1aab1-a7aa-419c-bdf0-be14844c4f86": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "3c30646f-f520-4a86-b767-c1961016a69a",
			"targetRef": "7a433b74-638b-4268-aebe-d9530db518c4"
		},
		"1eb805b7-19ad-41b7-a84b-3fff99c22764": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.SubStatus == \"PROCESS_FAILED\"}",
			"id": "sequenceflow9",
			"name": "PROCESS_FAILED",
			"sourceRef": "7a433b74-638b-4268-aebe-d9530db518c4",
			"targetRef": "d2b3ebcd-826c-4c54-974b-c997e45222b3"
		},
		"a8d3ae7d-f076-4987-bc86-55cb6f121933": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "other",
			"sourceRef": "7a433b74-638b-4268-aebe-d9530db518c4",
			"targetRef": "84296e1f-3281-4b0e-9007-90df394252e3"
		},
		"c3eaef60-b8e8-49e8-b23d-cfe47444a3a4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "84296e1f-3281-4b0e-9007-90df394252e3",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"45b7e5dd-28ca-4eb7-8b21-56503749cef7": {},
				"7e126627-ba98-447c-bf5b-baf98ecfb432": {},
				"114f74aa-fe7f-43b9-92d0-8c2733fcf725": {},
				"46e3e371-3fee-4466-95f8-fbec32c5cf4b": {},
				"5bac72fa-5a4d-4970-bcd5-6eb5ad5c933f": {},
				"1f352b35-b562-4e85-82b5-aa5d10fddfbd": {},
				"bcf8df20-cec5-4bc2-8e01-3d58f64f59f7": {},
				"afe0ed9a-c022-41a8-8307-657d09f9ffb8": {},
				"f94859a3-06b3-456e-a36d-208c05e2a093": {},
				"33f0f024-f829-4b44-b9b0-abc4dffe7e04": {},
				"93ed1288-3220-4ad0-87c2-36876b87efea": {},
				"39db5e32-fab9-4a0e-abd7-9ded06783c4a": {},
				"97837dd5-7b01-484a-bec9-08f629d3ce0e": {},
				"9ff80f08-fc3f-4795-9f16-9427828e9050": {},
				"06db32b4-a35a-4386-ab02-1d790531fd9d": {},
				"5a83d0c3-5d66-4232-9a0a-629069ea2e77": {},
				"5fd62e72-a338-47f7-9bbb-ba3b81b3b073": {},
				"dee18e25-edba-442d-8d4a-d91dfc00833d": {},
				"da81cf16-6f4c-40bb-b795-d4ecf4a2edfe": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 53,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1257,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "69,116 163,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "114f74aa-fe7f-43b9-92d0-8c2733fcf725",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"45b7e5dd-28ca-4eb7-8b21-56503749cef7": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1058,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "7164ef21-635a-478d-80ba-19eb7b42ea10"
		},
		"7e126627-ba98-447c-bf5b-baf98ecfb432": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1108,115.75 1274.5,115.75",
			"sourceSymbol": "45b7e5dd-28ca-4eb7-8b21-56503749cef7",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "37309036-8df7-43a5-b2b2-7a4557f27aca"
		},
		"114f74aa-fe7f-43b9-92d0-8c2733fcf725": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 113,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "1abef03d-df86-4e75-8221-96a5a1bac7b9"
		},
		"46e3e371-3fee-4466-95f8-fbec32c5cf4b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "163,116 287,116",
			"sourceSymbol": "114f74aa-fe7f-43b9-92d0-8c2733fcf725",
			"targetSymbol": "5bac72fa-5a4d-4970-bcd5-6eb5ad5c933f",
			"object": "b02bfb29-43f5-4eb6-bc69-d8eec7cb9cee"
		},
		"5bac72fa-5a4d-4970-bcd5-6eb5ad5c933f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 237,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "0ed9f1f2-c439-4582-8f2f-83cc111a75c5"
		},
		"1f352b35-b562-4e85-82b5-aa5d10fddfbd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "287,116 409,116",
			"sourceSymbol": "5bac72fa-5a4d-4970-bcd5-6eb5ad5c933f",
			"targetSymbol": "93ed1288-3220-4ad0-87c2-36876b87efea",
			"object": "05fa994d-c645-47f8-b0bc-b3688a4b923c"
		},
		"bcf8df20-cec5-4bc2-8e01-3d58f64f59f7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 801,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "d2b3ebcd-826c-4c54-974b-c997e45222b3"
		},
		"afe0ed9a-c022-41a8-8307-657d09f9ffb8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "851,116 978,116",
			"sourceSymbol": "bcf8df20-cec5-4bc2-8e01-3d58f64f59f7",
			"targetSymbol": "f94859a3-06b3-456e-a36d-208c05e2a093",
			"object": "3d680c62-9895-479d-850e-d07c4d501350"
		},
		"f94859a3-06b3-456e-a36d-208c05e2a093": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 928,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "fc671350-289e-4799-85a6-0ab6470d64f1"
		},
		"33f0f024-f829-4b44-b9b0-abc4dffe7e04": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "978,116 1108,116",
			"sourceSymbol": "f94859a3-06b3-456e-a36d-208c05e2a093",
			"targetSymbol": "45b7e5dd-28ca-4eb7-8b21-56503749cef7",
			"object": "85cce060-02f8-46bf-8658-29b74607ad34"
		},
		"93ed1288-3220-4ad0-87c2-36876b87efea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 359,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "3dda969e-e586-456f-bf84-2871f500d095"
		},
		"39db5e32-fab9-4a0e-abd7-9ded06783c4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "409,116 536,116",
			"sourceSymbol": "93ed1288-3220-4ad0-87c2-36876b87efea",
			"targetSymbol": "97837dd5-7b01-484a-bec9-08f629d3ce0e",
			"object": "0090af92-78fa-494c-a7c3-44f3fd99b156"
		},
		"97837dd5-7b01-484a-bec9-08f629d3ce0e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 486,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "3c30646f-f520-4a86-b767-c1961016a69a"
		},
		"9ff80f08-fc3f-4795-9f16-9427828e9050": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "536,116 663,116",
			"sourceSymbol": "97837dd5-7b01-484a-bec9-08f629d3ce0e",
			"targetSymbol": "06db32b4-a35a-4386-ab02-1d790531fd9d",
			"object": "9db1aab1-a7aa-419c-bdf0-be14844c4f86"
		},
		"06db32b4-a35a-4386-ab02-1d790531fd9d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 642,
			"y": 95,
			"object": "7a433b74-638b-4268-aebe-d9530db518c4"
		},
		"5a83d0c3-5d66-4232-9a0a-629069ea2e77": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "663,116 851,116",
			"sourceSymbol": "06db32b4-a35a-4386-ab02-1d790531fd9d",
			"targetSymbol": "bcf8df20-cec5-4bc2-8e01-3d58f64f59f7",
			"object": "1eb805b7-19ad-41b7-a84b-3fff99c22764"
		},
		"5fd62e72-a338-47f7-9bbb-ba3b81b3b073": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1058,
			"y": 180,
			"width": 100,
			"height": 60,
			"object": "84296e1f-3281-4b0e-9007-90df394252e3"
		},
		"dee18e25-edba-442d-8d4a-d91dfc00833d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "663,136.5 663,210 1058.5,210",
			"sourceSymbol": "06db32b4-a35a-4386-ab02-1d790531fd9d",
			"targetSymbol": "5fd62e72-a338-47f7-9bbb-ba3b81b3b073",
			"object": "a8d3ae7d-f076-4987-bc86-55cb6f121933"
		},
		"da81cf16-6f4c-40bb-b795-d4ecf4a2edfe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1108,210 1274.5,210 1274.5,132.5",
			"sourceSymbol": "5fd62e72-a338-47f7-9bbb-ba3b81b3b073",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c3eaef60-b8e8-49e8-b23d-cfe47444a3a4"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 11,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 4,
			"scripttask": 2,
			"mailtask": 2,
			"exclusivegateway": 1
		},
		"0524c1a2-4a8b-4cd4-a1c7-ee3e35200231": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.DetermineAdminRuleResponse.Result[0].ProcessAdminDetails.Email}",
			"subject": "Approval process for Purchase Request ${context.ID} reached critical status - ${context.SubStatus}",
			"reference": "/webcontent/NotifyProcurementAdmin/AdministratorNotificationFailedStatus.html",
			"id": "maildefinition1"
		},
		"9cf26e2e-a607-4c46-a77a-73fe937a17d7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.DetermineAdminRuleResponse.Result[0].ProcessAdminDetails.Email}",
			"subject": "Approval process for Purchase Request ${context.ID} reached critical status - ${context.SubStatus}",
			"reference": "/webcontent/NotifyAdmin/AdministratorNotification.html",
			"id": "maildefinition2"
		}
	}
}