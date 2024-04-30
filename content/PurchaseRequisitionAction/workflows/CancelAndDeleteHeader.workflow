{
	"contents": {
		"fb5de311-7634-4fb9-ab04-eb302fc2d956": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "CancelAndDeleteHeader",
			"subject": "Cancel and Delete Purchase Requisition ${context.ID}",
			"name": "CancelAndDeleteHeader",
			"documentation": "Delete PR All Line Items and Cancel Approval Process",
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
				"e32c7114-d577-4259-b7a5-330800e4c19e": {
					"name": "Get Workflow context"
				},
				"666b2f53-1a98-4d18-8650-ba14babaef9a": {
					"name": "Get Line Item Context"
				},
				"90f36f87-f512-42e1-b5df-616bbf278381": {
					"name": "Prepare Context for Delete and Cancel"
				},
				"51f9ac43-c62d-41a9-a478-bfc0c3639253": {
					"name": "Delete Line item"
				},
				"3bd9c04c-e61e-4309-94b9-7c6dc72aecee": {
					"name": "Cancel Approval Process"
				},
				"cca7c657-cdf1-4bd0-868e-be34e84c5d8e": {
					"name": "Notify Buyer"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"e6254ec7-26cc-4bcd-8ddc-61dd7803414f": {
					"name": "SequenceFlow2"
				},
				"a61b8b78-2bef-49e9-a68d-1b8a28060ef3": {
					"name": "SequenceFlow3"
				},
				"cb635140-4a99-49bd-a989-b5f59af22ef3": {
					"name": "SequenceFlow4"
				},
				"6413226a-ff67-4262-8403-7c6c9960fa01": {
					"name": "SequenceFlow5"
				},
				"fa504f69-5fbd-492b-88d8-22cfcffc8d77": {
					"name": "SequenceFlow6"
				},
				"c2e01b04-a136-4b1c-b9e4-06a3e2ad2118": {
					"name": "SequenceFlow7"
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
		"e32c7114-d577-4259-b7a5-330800e4c19e": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask1",
			"name": "Get Workflow context"
		},
		"666b2f53-1a98-4d18-8650-ba14babaef9a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask2",
			"name": "Get Line Item Context"
		},
		"90f36f87-f512-42e1-b5df-616bbf278381": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/CancelAndDeleteHeader/PrepareBapiHeaderDeleteInputPayload.js",
			"id": "scripttask1",
			"name": "Prepare Context for Delete and Cancel"
		},
		"51f9ac43-c62d-41a9-a478-bfc0c3639253": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_DELETE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiDeleteData.Request}",
			"responseVariable": "${context.RequisitionBapiDeleteData.Response}",
			"id": "servicetask3",
			"name": "Delete Line item"
		},
		"3bd9c04c-e61e-4309-94b9-7c6dc72aecee": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.WorkflowCancelRequest}",
			"responseVariable": "${context.WorkflowCancelResponse}",
			"id": "servicetask4",
			"name": "Cancel Approval Process"
		},
		"cca7c657-cdf1-4bd0-868e-be34e84c5d8e": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Notify Buyer",
			"mailDefinitionRef": "b5dc7239-8944-4342-97d3-ee4452cba5d1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "e32c7114-d577-4259-b7a5-330800e4c19e"
		},
		"e6254ec7-26cc-4bcd-8ddc-61dd7803414f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e32c7114-d577-4259-b7a5-330800e4c19e",
			"targetRef": "666b2f53-1a98-4d18-8650-ba14babaef9a"
		},
		"a61b8b78-2bef-49e9-a68d-1b8a28060ef3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "666b2f53-1a98-4d18-8650-ba14babaef9a",
			"targetRef": "90f36f87-f512-42e1-b5df-616bbf278381"
		},
		"cb635140-4a99-49bd-a989-b5f59af22ef3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "90f36f87-f512-42e1-b5df-616bbf278381",
			"targetRef": "51f9ac43-c62d-41a9-a478-bfc0c3639253"
		},
		"6413226a-ff67-4262-8403-7c6c9960fa01": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "51f9ac43-c62d-41a9-a478-bfc0c3639253",
			"targetRef": "3bd9c04c-e61e-4309-94b9-7c6dc72aecee"
		},
		"fa504f69-5fbd-492b-88d8-22cfcffc8d77": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "3bd9c04c-e61e-4309-94b9-7c6dc72aecee",
			"targetRef": "cca7c657-cdf1-4bd0-868e-be34e84c5d8e"
		},
		"c2e01b04-a136-4b1c-b9e4-06a3e2ad2118": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "cca7c657-cdf1-4bd0-868e-be34e84c5d8e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"4ff107ac-1852-407b-a3c7-1225c0dc9906": {},
				"62a8dfbc-bf5a-463d-8831-8c66b4fa839c": {},
				"4c559586-e120-46eb-974f-2aca3f7f3770": {},
				"53ad3036-b0ee-4ded-bc6e-e7298503b3e8": {},
				"cab14644-f59f-4406-9d1f-205c9b2f908e": {},
				"94e130d6-b61f-4a8a-be18-cf3c919e6b5a": {},
				"10904e7f-102b-45e8-b475-d668824dd557": {},
				"03eff5e9-07c3-4478-9327-d3628d3e5a70": {},
				"64f51df6-af0c-449e-b81a-b1440220a1ff": {},
				"a17991fd-00b7-4865-a562-589aea610365": {},
				"5b402365-7c58-43aa-a142-cda7217c26c0": {},
				"ecca5c3e-2fe2-46db-b39a-4ea9ee719ed5": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 4,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 904,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "20,117 131,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "4ff107ac-1852-407b-a3c7-1225c0dc9906",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"4ff107ac-1852-407b-a3c7-1225c0dc9906": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 81,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "e32c7114-d577-4259-b7a5-330800e4c19e"
		},
		"62a8dfbc-bf5a-463d-8831-8c66b4fa839c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "131,118 250,118",
			"sourceSymbol": "4ff107ac-1852-407b-a3c7-1225c0dc9906",
			"targetSymbol": "4c559586-e120-46eb-974f-2aca3f7f3770",
			"object": "e6254ec7-26cc-4bcd-8ddc-61dd7803414f"
		},
		"4c559586-e120-46eb-974f-2aca3f7f3770": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 200,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "666b2f53-1a98-4d18-8650-ba14babaef9a"
		},
		"53ad3036-b0ee-4ded-bc6e-e7298503b3e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "250,118 403,118",
			"sourceSymbol": "4c559586-e120-46eb-974f-2aca3f7f3770",
			"targetSymbol": "cab14644-f59f-4406-9d1f-205c9b2f908e",
			"object": "a61b8b78-2bef-49e9-a68d-1b8a28060ef3"
		},
		"cab14644-f59f-4406-9d1f-205c9b2f908e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 353,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "90f36f87-f512-42e1-b5df-616bbf278381"
		},
		"94e130d6-b61f-4a8a-be18-cf3c919e6b5a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "403,118 525,118",
			"sourceSymbol": "cab14644-f59f-4406-9d1f-205c9b2f908e",
			"targetSymbol": "10904e7f-102b-45e8-b475-d668824dd557",
			"object": "cb635140-4a99-49bd-a989-b5f59af22ef3"
		},
		"10904e7f-102b-45e8-b475-d668824dd557": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 475,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "51f9ac43-c62d-41a9-a478-bfc0c3639253"
		},
		"03eff5e9-07c3-4478-9327-d3628d3e5a70": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "525,118 687,118",
			"sourceSymbol": "10904e7f-102b-45e8-b475-d668824dd557",
			"targetSymbol": "64f51df6-af0c-449e-b81a-b1440220a1ff",
			"object": "6413226a-ff67-4262-8403-7c6c9960fa01"
		},
		"64f51df6-af0c-449e-b81a-b1440220a1ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 637,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "3bd9c04c-e61e-4309-94b9-7c6dc72aecee"
		},
		"a17991fd-00b7-4865-a562-589aea610365": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "687,118 808,118",
			"sourceSymbol": "64f51df6-af0c-449e-b81a-b1440220a1ff",
			"targetSymbol": "5b402365-7c58-43aa-a142-cda7217c26c0",
			"object": "fa504f69-5fbd-492b-88d8-22cfcffc8d77"
		},
		"5b402365-7c58-43aa-a142-cda7217c26c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 758,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "cca7c657-cdf1-4bd0-868e-be34e84c5d8e"
		},
		"ecca5c3e-2fe2-46db-b39a-4ea9ee719ed5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "808,117.75 921.5,117.75",
			"sourceSymbol": "5b402365-7c58-43aa-a142-cda7217c26c0",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "c2e01b04-a136-4b1c-b9e4-06a3e2ad2118"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 4,
			"scripttask": 1,
			"mailtask": 1
		},
		"b5dc7239-8944-4342-97d3-ee4452cba5d1": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "Purchase requisition ${context.ID} deleted by Process Administrator",
			"text": "Dear User,\n\nPurchase requisition ${context.ID} was deleted by Process Administrator.\n\nThis is an automatically created message.",
			"id": "maildefinition1"
		}
	}
}