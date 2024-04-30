{
	"contents": {
		"736c1eaf-c2cb-47d1-99c0-a89ab6b61750": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "CancelAndDelete_LineItem",
			"subject": "Cancel And Delete Purchase Requisition Line Item ${context.ID} ${context.ItemNumber}",
			"name": "CancelAndDeleteLineItem",
			"documentation": "Delete PR Line Item and Cancel Approval Process",
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
				"47df8db0-ef7e-49f0-8c30-a723a9b5b249": {
					"name": "Prepare Context for Delete and Cancel"
				},
				"374f5016-84ce-4857-86ec-65c3fba567e1": {
					"name": "Get workflow context"
				},
				"ff01ddc0-1614-4903-ab4e-6bdd9bbf128d": {
					"name": "Get Line Item Context"
				},
				"00476b00-ec35-44fe-a8d7-6d6c0dfddd0f": {
					"name": "Delete  Line Item"
				},
				"1bdede67-b5e7-4c6c-9438-9908a3984f6a": {
					"name": "Cancel Approval process"
				},
				"4c471b13-7171-42b3-aa30-bc3760f6c201": {
					"name": "Notify Buyer"
				},
				"d9534140-492b-49b9-b691-58febd718b34": {
					"name": "Prepare Message"
				},
				"e091dac7-840f-4845-8716-15a51ac21798": {
					"name": "Update Parent Workflow"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"b0a20c93-aa07-48d3-8cbb-a86616873dfe": {
					"name": "SequenceFlow8"
				},
				"d858e5f6-673d-4b92-a207-49e44c356272": {
					"name": "SequenceFlow9"
				},
				"7d229238-80b1-44f7-a07e-fd54613f3ff5": {
					"name": "SequenceFlow10"
				},
				"76578aac-10f9-4825-a9a1-234d01a3779f": {
					"name": "SequenceFlow11"
				},
				"582191fe-f4db-4564-9288-01614457af10": {
					"name": "SequenceFlow12"
				},
				"d4fe61db-169a-48e5-8d49-1eadb29394f9": {
					"name": "SequenceFlow13"
				},
				"c88101d1-8b37-4449-a256-e8982749b6a8": {
					"name": "SequenceFlow14"
				},
				"7a91fcff-e499-4164-b3a1-5a6012f2295f": {
					"name": "SequenceFlow15"
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
		"47df8db0-ef7e-49f0-8c30-a723a9b5b249": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancelAndDeleteLineItem/PrepareBapiPRDeleteInputPayload.js",
			"id": "scripttask2",
			"name": "Prepare Context for Delete and Cancel"
		},
		"374f5016-84ce-4857-86ec-65c3fba567e1": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask5",
			"name": "Get workflow context"
		},
		"ff01ddc0-1614-4903-ab4e-6bdd9bbf128d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask6",
			"name": "Get Line Item Context"
		},
		"00476b00-ec35-44fe-a8d7-6d6c0dfddd0f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_DELETE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiDeleteData.Request}",
			"responseVariable": "${context.RequisitionBapiDeleteData.Response}",
			"id": "servicetask7",
			"name": "Delete  Line Item"
		},
		"1bdede67-b5e7-4c6c-9438-9908a3984f6a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.WorkflowCancelRequest}",
			"responseVariable": "${context.WorkflowCancelResponse}",
			"id": "servicetask8",
			"name": "Cancel Approval process"
		},
		"4c471b13-7171-42b3-aa30-bc3760f6c201": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Notify Buyer",
			"mailDefinitionRef": "7eb93abf-bc41-4a88-976b-8feaef7eb964"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "374f5016-84ce-4857-86ec-65c3fba567e1"
		},
		"b0a20c93-aa07-48d3-8cbb-a86616873dfe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "47df8db0-ef7e-49f0-8c30-a723a9b5b249",
			"targetRef": "00476b00-ec35-44fe-a8d7-6d6c0dfddd0f"
		},
		"d858e5f6-673d-4b92-a207-49e44c356272": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "374f5016-84ce-4857-86ec-65c3fba567e1",
			"targetRef": "ff01ddc0-1614-4903-ab4e-6bdd9bbf128d"
		},
		"7d229238-80b1-44f7-a07e-fd54613f3ff5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "ff01ddc0-1614-4903-ab4e-6bdd9bbf128d",
			"targetRef": "47df8db0-ef7e-49f0-8c30-a723a9b5b249"
		},
		"76578aac-10f9-4825-a9a1-234d01a3779f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "00476b00-ec35-44fe-a8d7-6d6c0dfddd0f",
			"targetRef": "1bdede67-b5e7-4c6c-9438-9908a3984f6a"
		},
		"582191fe-f4db-4564-9288-01614457af10": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "1bdede67-b5e7-4c6c-9438-9908a3984f6a",
			"targetRef": "4c471b13-7171-42b3-aa30-bc3760f6c201"
		},
		"d4fe61db-169a-48e5-8d49-1eadb29394f9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "4c471b13-7171-42b3-aa30-bc3760f6c201",
			"targetRef": "d9534140-492b-49b9-b691-58febd718b34"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4f0a6f96-270b-4aa0-8b4c-d80a6b1a906c": {},
				"880a12da-a738-4a8a-ab54-a163821c2a38": {},
				"a3f1f827-8946-4724-8f19-f541311c856e": {},
				"66186107-e0e7-493e-a38a-df07b2b91009": {},
				"27428a57-0be6-4cdf-a4d4-c9945c997dc4": {},
				"a68ec12f-0101-4400-b947-bba638c34131": {},
				"504ae80e-de0d-4908-8df4-bfba44e15849": {},
				"f2924b12-ea2e-4645-ab00-b05eb9fe040f": {},
				"0ae48785-4159-455d-960d-b3cd3b5ce89b": {},
				"4b7ff9a1-2309-4179-a7d7-79f3473e5e3a": {},
				"43aef802-86c7-4a18-85fd-b2a119c45324": {},
				"9c98bb1d-716a-418b-afe4-e62f474100c1": {},
				"8b49866a-46d8-41ba-a110-482501e3abf8": {},
				"45d8bd61-20a8-41e3-b6f5-53ec80fbfb92": {},
				"288c1ba1-ca8f-4ff3-819a-f23e46c115d9": {},
				"ed8cddb7-8092-44e3-aab3-a7a6fa60f72f": {}
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
			"x": 1472,
			"y": 99,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "137,116 234,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "a3f1f827-8946-4724-8f19-f541311c856e",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4f0a6f96-270b-4aa0-8b4c-d80a6b1a906c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 483,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "47df8db0-ef7e-49f0-8c30-a723a9b5b249"
		},
		"880a12da-a738-4a8a-ab54-a163821c2a38": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "533,115.875 654.25,115.875",
			"sourceSymbol": "4f0a6f96-270b-4aa0-8b4c-d80a6b1a906c",
			"targetSymbol": "504ae80e-de0d-4908-8df4-bfba44e15849",
			"object": "b0a20c93-aa07-48d3-8cbb-a86616873dfe"
		},
		"a3f1f827-8946-4724-8f19-f541311c856e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 184,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "374f5016-84ce-4857-86ec-65c3fba567e1"
		},
		"66186107-e0e7-493e-a38a-df07b2b91009": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "234,116 353,116",
			"sourceSymbol": "a3f1f827-8946-4724-8f19-f541311c856e",
			"targetSymbol": "27428a57-0be6-4cdf-a4d4-c9945c997dc4",
			"object": "d858e5f6-673d-4b92-a207-49e44c356272"
		},
		"27428a57-0be6-4cdf-a4d4-c9945c997dc4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 303,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ff01ddc0-1614-4903-ab4e-6bdd9bbf128d"
		},
		"a68ec12f-0101-4400-b947-bba638c34131": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "353,116 533,116",
			"sourceSymbol": "27428a57-0be6-4cdf-a4d4-c9945c997dc4",
			"targetSymbol": "4f0a6f96-270b-4aa0-8b4c-d80a6b1a906c",
			"object": "7d229238-80b1-44f7-a07e-fd54613f3ff5"
		},
		"504ae80e-de0d-4908-8df4-bfba44e15849": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 604.25,
			"y": 85.75,
			"width": 100,
			"height": 60,
			"object": "00476b00-ec35-44fe-a8d7-6d6c0dfddd0f"
		},
		"f2924b12-ea2e-4645-ab00-b05eb9fe040f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "654.25,115.6875 831.875,115.6875",
			"sourceSymbol": "504ae80e-de0d-4908-8df4-bfba44e15849",
			"targetSymbol": "0ae48785-4159-455d-960d-b3cd3b5ce89b",
			"object": "76578aac-10f9-4825-a9a1-234d01a3779f"
		},
		"0ae48785-4159-455d-960d-b3cd3b5ce89b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 781.875,
			"y": 85.625,
			"width": 100,
			"height": 60,
			"object": "1bdede67-b5e7-4c6c-9438-9908a3984f6a"
		},
		"4b7ff9a1-2309-4179-a7d7-79f3473e5e3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "831.875,116.09375 958.6875,116.09375",
			"sourceSymbol": "0ae48785-4159-455d-960d-b3cd3b5ce89b",
			"targetSymbol": "43aef802-86c7-4a18-85fd-b2a119c45324",
			"object": "582191fe-f4db-4564-9288-01614457af10"
		},
		"43aef802-86c7-4a18-85fd-b2a119c45324": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 908.6875,
			"y": 86.5625,
			"width": 100,
			"height": 60,
			"object": "4c471b13-7171-42b3-aa30-bc3760f6c201"
		},
		"9c98bb1d-716a-418b-afe4-e62f474100c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "958.6875,116.78125 1154,116.78125",
			"sourceSymbol": "43aef802-86c7-4a18-85fd-b2a119c45324",
			"targetSymbol": "8b49866a-46d8-41ba-a110-482501e3abf8",
			"object": "d4fe61db-169a-48e5-8d49-1eadb29394f9"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 15,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 9,
			"scripttask": 3,
			"mailtask": 2
		},
		"7eb93abf-bc41-4a88-976b-8feaef7eb964": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "Purchase requisition ${context.ID}/${context.ItemNumber} was deleted by Process Administrator",
			"text": "Dear User,\n\nPurchase requisition ${context.ID}/${context.ItemNumber} was Deleted by Process Administrator.\n\nThis is an automatically created message.",
			"id": "maildefinition1"
		},
		"d9534140-492b-49b9-b691-58febd718b34": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancelAndDeleteLineItem/PrepareConfirmationMessage.js",
			"id": "scripttask3",
			"name": "Prepare Message"
		},
		"8b49866a-46d8-41ba-a110-482501e3abf8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1104,
			"y": 87,
			"width": 100,
			"height": 60,
			"object": "d9534140-492b-49b9-b691-58febd718b34"
		},
		"c88101d1-8b37-4449-a256-e8982749b6a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "d9534140-492b-49b9-b691-58febd718b34",
			"targetRef": "e091dac7-840f-4845-8716-15a51ac21798"
		},
		"45d8bd61-20a8-41e3-b6f5-53ec80fbfb92": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1154,117 1285,117",
			"sourceSymbol": "8b49866a-46d8-41ba-a110-482501e3abf8",
			"targetSymbol": "288c1ba1-ca8f-4ff3-819a-f23e46c115d9",
			"object": "c88101d1-8b37-4449-a256-e8982749b6a8"
		},
		"e091dac7-840f-4845-8716-15a51ac21798": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/messages",
			"httpMethod": "POST",
			"requestVariable": "${context.ConfirmationMessage}",
			"id": "servicetask9",
			"name": "Update Parent Workflow"
		},
		"288c1ba1-ca8f-4ff3-819a-f23e46c115d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1235,
			"y": 87,
			"width": 100,
			"height": 60,
			"object": "e091dac7-840f-4845-8716-15a51ac21798"
		},
		"7a91fcff-e499-4164-b3a1-5a6012f2295f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "e091dac7-840f-4845-8716-15a51ac21798",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ed8cddb7-8092-44e3-aab3-a7a6fa60f72f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1285,116.75 1489.5,116.75",
			"sourceSymbol": "288c1ba1-ca8f-4ff3-819a-f23e46c115d9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7a91fcff-e499-4164-b3a1-5a6012f2295f"
		}
	}
}