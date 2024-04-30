{
	"contents": {
		"b762206a-d428-45dd-874c-4ae5ae9ee012": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "Release_LineItem",
			"subject": "Release Purchase Requisition - Line Item ${context.ID} ${context.ItemNumber}",
			"businessKey": "",
			"name": "ReleaseLineItem",
			"documentation": "Release a Purchase Requisition Line Item from Process Visibility",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"0db24abd-b370-4fa4-b520-9add3f70e58c": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"3cad2690-bb49-4e1f-84ae-82a9bd4931fd": {
					"name": "Get workflow context"
				},
				"bc8df4e6-f43d-4eff-b1cc-b6732c6cb3a1": {
					"name": "Get Line Item Context"
				},
				"408fcb22-4860-41a2-9727-7ece77fe40ea": {
					"name": "Prepare Payload for Release Line Item"
				},
				"8050122a-b488-471d-80fb-67530ec6ce9f": {
					"name": "Release Line Item"
				},
				"a34d3389-e369-43b2-863e-34cf633e624d": {
					"name": "Notify Buyer"
				},
				"7f0ad2e6-40be-4719-9508-97ec35c92e49": {
					"name": "Release strategy?"
				},
				"5a4ce8a9-a7f8-470f-a71f-b7d68d5afaa8": {
					"name": "Prepare Payload for Update Line Item"
				},
				"da64f652-56b6-44a7-a10a-3583d8551429": {
					"name": "Update Line Item"
				},
				"ceedd507-8541-44ad-88d5-0ff109f04309": {
					"name": "Check errors"
				},
				"f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28": {
					"name": "Any errors?"
				},
				"14af6b4b-a7ef-49f2-95d5-65cc818004cd": {
					"name": "Notify Requestor"
				},
				"d7a1e99f-8e35-4e49-9063-18532d4d7782": {
					"name": "Cancel Approval Workflow"
				},
				"8b109877-c582-4f05-b8a0-ce0ddfde70f1": {
					"name": "Check errors"
				},
				"0078d6d2-2e0a-4b77-81b5-f4a50a9509f9": {
					"name": "update errors?"
				},
				"2e5e28dc-d7fa-4e81-b7c1-f902d40a3265": {
					"name": "Prepare Message"
				},
				"ed286fe9-ff39-49af-86ec-590bbaa1015e": {
					"name": "Update Parent Workflow"
				},
				"f1adfe0c-1fbc-44be-8827-eb6b930cf2cf": {
					"name": "Prepare context"
				}
			},
			"sequenceFlows": {
				"9873aa0a-1148-469c-889b-ea1ad8e64505": {
					"name": "SequenceFlow5"
				},
				"a02cdbb3-6b6b-4116-bbb3-3dbd71860e4c": {
					"name": "SequenceFlow6"
				},
				"488a6349-bc57-4937-afdc-ea107e7aa3a5": {
					"name": "SequenceFlow8"
				},
				"79bfe380-f0df-43cb-a661-4e5eb323fb0e": {
					"name": "SequenceFlow9"
				},
				"d94d46e3-fa55-49ef-941b-f73e758dbcfa": {
					"name": "SequenceFlow11"
				},
				"3f86c6d4-ce1c-4eab-93cf-95e012cb8c06": {
					"name": "SequenceFlow12"
				},
				"9570fa1c-c9c3-4635-9d1d-2068f0526f2c": {
					"name": "Release Strategy"
				},
				"f7a2d4b5-f6c5-43c5-b734-d32817cb31d4": {
					"name": "Requisition block"
				},
				"da17364e-93c7-4e2e-9b45-7f17e239fdf6": {
					"name": "SequenceFlow15"
				},
				"69ad21b5-95b6-4071-b595-de66fdec5909": {
					"name": "SequenceFlow16"
				},
				"b229602c-aecd-469d-ae12-ed95666b63e3": {
					"name": "No errors"
				},
				"d7df8d03-afd3-4f8a-b64c-20167a20c85e": {
					"name": "errors"
				},
				"2bd3810d-db35-4361-ada6-fd5c599c2cb7": {
					"name": "SequenceFlow20"
				},
				"8d5701a9-5acc-46b1-b70c-d821cddcdd0a": {
					"name": "SequenceFlow22"
				},
				"499b68d2-432d-4441-b8d7-204b868ee611": {
					"name": "SequenceFlow26"
				},
				"ea2cba6f-97c6-404f-8177-03b4c6f816d4": {
					"name": "SequenceFlow28"
				},
				"c1a6aed8-332e-4838-ad64-a30eef0633bd": {
					"name": "no errors"
				},
				"ff6b30ee-9c89-4e20-986a-ecdb3d439034": {
					"name": "errors"
				},
				"75cbb213-77ee-4d43-972a-1cc7d6585a7c": {
					"name": "SequenceFlow31"
				},
				"2e887991-d897-4fc7-ab92-94c51bb877d0": {
					"name": "SequenceFlow32"
				},
				"e0cf9fa7-50d5-4e1b-b1de-601b9829e601": {
					"name": "SequenceFlow34"
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
		"0db24abd-b370-4fa4-b520-9add3f70e58c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"3cad2690-bb49-4e1f-84ae-82a9bd4931fd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask1",
			"name": "Get workflow context"
		},
		"bc8df4e6-f43d-4eff-b1cc-b6732c6cb3a1": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask2",
			"name": "Get Line Item Context"
		},
		"408fcb22-4860-41a2-9727-7ece77fe40ea": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/ReleaseLineItem.js",
			"id": "scripttask1",
			"name": "Prepare Payload for Release Line Item"
		},
		"8050122a-b488-471d-80fb-67530ec6ce9f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_RELEASE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiReleaseData.Request}",
			"responseVariable": "${context.RequisitionBapiReleaseData.Response}",
			"id": "servicetask4",
			"name": "Release Line Item"
		},
		"a34d3389-e369-43b2-863e-34cf633e624d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Notify Buyer",
			"mailDefinitionRef": "0f29f8fc-a0f2-4a03-8d83-fe87b2ab0033"
		},
		"7f0ad2e6-40be-4719-9508-97ec35c92e49": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Release strategy?",
			"default": "9570fa1c-c9c3-4635-9d1d-2068f0526f2c"
		},
		"5a4ce8a9-a7f8-470f-a71f-b7d68d5afaa8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/PrepareBapiPRUpdateInputPayload.js",
			"id": "scripttask2",
			"name": "Prepare Payload for Update Line Item"
		},
		"da64f652-56b6-44a7-a10a-3583d8551429": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_CHANGE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiChangeData.Request}",
			"responseVariable": "${context.RequisitionBapiChangeData.Response}",
			"id": "servicetask6",
			"name": "Update Line Item"
		},
		"ceedd507-8541-44ad-88d5-0ff109f04309": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/CheckReleaseUpdateErrors.js",
			"id": "scripttask3",
			"name": "Check errors"
		},
		"f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Any errors?",
			"default": "b229602c-aecd-469d-ae12-ed95666b63e3"
		},
		"14af6b4b-a7ef-49f2-95d5-65cc818004cd": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Notify Requestor",
			"mailDefinitionRef": "905f3a57-d50c-450b-a8a2-6faa970b86c7"
		},
		"d7a1e99f-8e35-4e49-9063-18532d4d7782": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.WorkflowCancelRequest}",
			"responseVariable": "${context.WorkflowCancelResponse}",
			"id": "servicetask7",
			"name": "Cancel Approval Workflow"
		},
		"8b109877-c582-4f05-b8a0-ce0ddfde70f1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/CheckLineItemUpdateErrors.js",
			"id": "scripttask4",
			"name": "Check errors"
		},
		"0078d6d2-2e0a-4b77-81b5-f4a50a9509f9": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "update errors?",
			"default": "c1a6aed8-332e-4838-ad64-a30eef0633bd"
		},
		"2e5e28dc-d7fa-4e81-b7c1-f902d40a3265": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/PrepareConfirmationMessage.js",
			"id": "scripttask5",
			"name": "Prepare Message"
		},
		"ed286fe9-ff39-49af-86ec-590bbaa1015e": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/messages",
			"httpMethod": "POST",
			"requestVariable": "${context.ConfirmationMessage}",
			"id": "servicetask8",
			"name": "Update Parent Workflow"
		},
		"9873aa0a-1148-469c-889b-ea1ad8e64505": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "408fcb22-4860-41a2-9727-7ece77fe40ea",
			"targetRef": "8050122a-b488-471d-80fb-67530ec6ce9f"
		},
		"a02cdbb3-6b6b-4116-bbb3-3dbd71860e4c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "8050122a-b488-471d-80fb-67530ec6ce9f",
			"targetRef": "ceedd507-8541-44ad-88d5-0ff109f04309"
		},
		"488a6349-bc57-4937-afdc-ea107e7aa3a5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "a34d3389-e369-43b2-863e-34cf633e624d",
			"targetRef": "2e5e28dc-d7fa-4e81-b7c1-f902d40a3265"
		},
		"79bfe380-f0df-43cb-a661-4e5eb323fb0e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "3cad2690-bb49-4e1f-84ae-82a9bd4931fd"
		},
		"d94d46e3-fa55-49ef-941b-f73e758dbcfa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "bc8df4e6-f43d-4eff-b1cc-b6732c6cb3a1",
			"targetRef": "f1adfe0c-1fbc-44be-8827-eb6b930cf2cf"
		},
		"3f86c6d4-ce1c-4eab-93cf-95e012cb8c06": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "3cad2690-bb49-4e1f-84ae-82a9bd4931fd",
			"targetRef": "bc8df4e6-f43d-4eff-b1cc-b6732c6cb3a1"
		},
		"9570fa1c-c9c3-4635-9d1d-2068f0526f2c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "Release Strategy",
			"sourceRef": "7f0ad2e6-40be-4719-9508-97ec35c92e49",
			"targetRef": "408fcb22-4860-41a2-9727-7ece77fe40ea"
		},
		"f7a2d4b5-f6c5-43c5-b734-d32817cb31d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.WorkflowContext.RequestDetails.WFBackendConfig==\"RB\"}",
			"id": "sequenceflow14",
			"name": "Requisition block",
			"sourceRef": "7f0ad2e6-40be-4719-9508-97ec35c92e49",
			"targetRef": "5a4ce8a9-a7f8-470f-a71f-b7d68d5afaa8"
		},
		"da17364e-93c7-4e2e-9b45-7f17e239fdf6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "5a4ce8a9-a7f8-470f-a71f-b7d68d5afaa8",
			"targetRef": "da64f652-56b6-44a7-a10a-3583d8551429"
		},
		"69ad21b5-95b6-4071-b595-de66fdec5909": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "ceedd507-8541-44ad-88d5-0ff109f04309",
			"targetRef": "f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28"
		},
		"b229602c-aecd-469d-ae12-ed95666b63e3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "No errors",
			"sourceRef": "f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28",
			"targetRef": "d7a1e99f-8e35-4e49-9063-18532d4d7782"
		},
		"d7df8d03-afd3-4f8a-b64c-20167a20c85e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.bapiCallErrors}",
			"id": "sequenceflow19",
			"name": "errors",
			"sourceRef": "f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28",
			"targetRef": "14af6b4b-a7ef-49f2-95d5-65cc818004cd"
		},
		"2bd3810d-db35-4361-ada6-fd5c599c2cb7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "14af6b4b-a7ef-49f2-95d5-65cc818004cd",
			"targetRef": "0db24abd-b370-4fa4-b520-9add3f70e58c"
		},
		"8d5701a9-5acc-46b1-b70c-d821cddcdd0a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "d7a1e99f-8e35-4e49-9063-18532d4d7782",
			"targetRef": "a34d3389-e369-43b2-863e-34cf633e624d"
		},
		"499b68d2-432d-4441-b8d7-204b868ee611": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "da64f652-56b6-44a7-a10a-3583d8551429",
			"targetRef": "8b109877-c582-4f05-b8a0-ce0ddfde70f1"
		},
		"ea2cba6f-97c6-404f-8177-03b4c6f816d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "8b109877-c582-4f05-b8a0-ce0ddfde70f1",
			"targetRef": "0078d6d2-2e0a-4b77-81b5-f4a50a9509f9"
		},
		"c1a6aed8-332e-4838-ad64-a30eef0633bd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "no errors",
			"sourceRef": "0078d6d2-2e0a-4b77-81b5-f4a50a9509f9",
			"targetRef": "408fcb22-4860-41a2-9727-7ece77fe40ea"
		},
		"ff6b30ee-9c89-4e20-986a-ecdb3d439034": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.bapiCallErrors}",
			"id": "sequenceflow30",
			"name": "errors",
			"sourceRef": "0078d6d2-2e0a-4b77-81b5-f4a50a9509f9",
			"targetRef": "f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28"
		},
		"75cbb213-77ee-4d43-972a-1cc7d6585a7c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "2e5e28dc-d7fa-4e81-b7c1-f902d40a3265",
			"targetRef": "ed286fe9-ff39-49af-86ec-590bbaa1015e"
		},
		"2e887991-d897-4fc7-ab92-94c51bb877d0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "ed286fe9-ff39-49af-86ec-590bbaa1015e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"fe9956d9-2183-4ff0-a6c7-74d0cc91733f": {},
				"bd482551-f21a-469e-bb4b-398b82cc1f0f": {},
				"424b5f1c-f5eb-4d39-aaee-e3e5b5fb672a": {},
				"fcd60830-873e-46e1-93b8-115ad89f3f13": {},
				"6bfef2e7-4360-4298-97c9-f54f9c7b138b": {},
				"18d99959-ccee-468a-9090-5cdeaf0b4e73": {},
				"03ec31fb-44bd-487d-89c5-51e966003cab": {},
				"26dc34c5-8efc-4d2e-89db-34c4201dfc10": {},
				"998906de-84e6-492a-b944-c6eb4c1b1ffb": {},
				"da9e958f-f199-481b-9b9b-c83c023962c3": {},
				"d85de913-df3c-4429-996d-ae8a37ffb1bb": {},
				"aa02b10b-7c0e-41c8-afe9-76ce6699f717": {},
				"a7d80707-2235-43a8-ba9c-7a601198a868": {},
				"91f039ef-139c-4851-9ea4-494b3a179985": {},
				"a0392fe1-9986-4a7f-9f85-49f21177de52": {},
				"77ba817c-a1ef-4154-91da-aa227af4c325": {},
				"5c699048-e209-4def-8fbe-158d4d3dcc81": {},
				"44e61e34-b5b5-49db-896f-6d35047345c3": {},
				"4602bc55-37fe-4ce3-9b33-9c5ef781f032": {},
				"d2b8b60e-6648-4cd5-84a0-2fedffd58beb": {},
				"b6f78bd2-bbc8-492c-b06b-81d0a4e75c63": {},
				"c29bfe00-a836-49de-8678-131177b44769": {},
				"0a41b862-4edf-49cf-b7a5-acda73bb355b": {},
				"772a14dd-5a40-4cc7-80ed-d4da5d16988b": {},
				"0da647e8-0f0c-4881-89fe-679c99877e00": {},
				"a2d29eae-1385-491f-a29d-182c0026a509": {},
				"63f28fe3-fe70-47e8-a140-8cf13f81c3d1": {},
				"4b805c48-6ba4-41cb-b8da-ecf66d9f2acc": {},
				"a5de19e7-1ebd-4441-9a7c-d577e96a7dbb": {},
				"dc8dbffd-e4da-4f00-8028-ad3840882d63": {},
				"90937469-6996-4c67-b6ca-06813fce8908": {},
				"93c31650-ed3b-4a9d-b0ed-8983dfbbbd50": {},
				"64b3e831-0523-493a-9635-0a8178bd2f9f": {},
				"e8e99508-1296-4579-8376-6a25edcb2072": {},
				"0580e9b4-0830-4c87-bbbf-751a5ae1e160": {},
				"7f7169fc-e22b-4948-9698-f9bdb2c9c642": {},
				"9fa93836-3ed1-4d88-b688-08644f2f2d75": {},
				"b8dca232-48d5-4098-9496-25a3ab9c5e26": {},
				"c0341d9b-5ec0-416b-807e-9f3a9838fef7": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -12,
			"y": 108,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1961,
			"y": 106,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"fe9956d9-2183-4ff0-a6c7-74d0cc91733f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 58.241472865938476,
			"y": 93.75,
			"width": 100,
			"height": 60,
			"object": "3cad2690-bb49-4e1f-84ae-82a9bd4931fd"
		},
		"bd482551-f21a-469e-bb4b-398b82cc1f0f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 178.87073643296924,
			"y": 93.625,
			"width": 100,
			"height": 60,
			"object": "bc8df4e6-f43d-4eff-b1cc-b6732c6cb3a1"
		},
		"424b5f1c-f5eb-4d39-aaee-e3e5b5fb672a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 626.6853682164847,
			"y": 96.0625,
			"width": 100,
			"height": 60,
			"object": "408fcb22-4860-41a2-9727-7ece77fe40ea"
		},
		"fcd60830-873e-46e1-93b8-115ad89f3f13": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "676.6853682164847,126.171875 810.5926841082423,126.171875",
			"sourceSymbol": "424b5f1c-f5eb-4d39-aaee-e3e5b5fb672a",
			"targetSymbol": "6bfef2e7-4360-4298-97c9-f54f9c7b138b",
			"object": "9873aa0a-1148-469c-889b-ea1ad8e64505"
		},
		"6bfef2e7-4360-4298-97c9-f54f9c7b138b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 760.5926841082423,
			"y": 96.28125,
			"width": 100,
			"height": 60,
			"object": "8050122a-b488-471d-80fb-67530ec6ce9f"
		},
		"18d99959-ccee-468a-9090-5cdeaf0b4e73": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "810.5926841082423,126.140625 944,126.140625",
			"sourceSymbol": "6bfef2e7-4360-4298-97c9-f54f9c7b138b",
			"targetSymbol": "44e61e34-b5b5-49db-896f-6d35047345c3",
			"object": "a02cdbb3-6b6b-4116-bbb3-3dbd71860e4c"
		},
		"03ec31fb-44bd-487d-89c5-51e966003cab": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1320.5231710270605,
			"y": 94.4453125,
			"width": 100,
			"height": 60,
			"object": "a34d3389-e369-43b2-863e-34cf633e624d"
		},
		"26dc34c5-8efc-4d2e-89db-34c4201dfc10": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1370.5231710270605,124.22265625 1521,124.22265625",
			"sourceSymbol": "03ec31fb-44bd-487d-89c5-51e966003cab",
			"targetSymbol": "e8e99508-1296-4579-8376-6a25edcb2072",
			"object": "488a6349-bc57-4937-afdc-ea107e7aa3a5"
		},
		"998906de-84e6-492a-b944-c6eb4c1b1ffb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "4,123.875 108.24147286593848,123.875",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "fe9956d9-2183-4ff0-a6c7-74d0cc91733f",
			"object": "79bfe380-f0df-43cb-a661-4e5eb323fb0e"
		},
		"da9e958f-f199-481b-9b9b-c83c023962c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "228.87073643296924,123.8125 360,123.8125",
			"sourceSymbol": "bd482551-f21a-469e-bb4b-398b82cc1f0f",
			"targetSymbol": "b8dca232-48d5-4098-9496-25a3ab9c5e26",
			"object": "d94d46e3-fa55-49ef-941b-f73e758dbcfa"
		},
		"d85de913-df3c-4429-996d-ae8a37ffb1bb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "108.24147286593848,123.6875 228.87073643296924,123.6875",
			"sourceSymbol": "fe9956d9-2183-4ff0-a6c7-74d0cc91733f",
			"targetSymbol": "bd482551-f21a-469e-bb4b-398b82cc1f0f",
			"object": "3f86c6d4-ce1c-4eab-93cf-95e012cb8c06"
		},
		"aa02b10b-7c0e-41c8-afe9-76ce6699f717": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 469,
			"y": 103,
			"object": "7f0ad2e6-40be-4719-9508-97ec35c92e49"
		},
		"a7d80707-2235-43a8-ba9c-7a601198a868": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490,125.03125 676.6853682164847,125.03125",
			"sourceSymbol": "aa02b10b-7c0e-41c8-afe9-76ce6699f717",
			"targetSymbol": "424b5f1c-f5eb-4d39-aaee-e3e5b5fb672a",
			"object": "9570fa1c-c9c3-4635-9d1d-2068f0526f2c"
		},
		"91f039ef-139c-4851-9ea4-494b3a179985": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 440,
			"y": -11,
			"width": 100,
			"height": 60,
			"object": "5a4ce8a9-a7f8-470f-a71f-b7d68d5afaa8"
		},
		"a0392fe1-9986-4a7f-9f85-49f21177de52": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 440,
			"y": -101,
			"width": 100,
			"height": 60,
			"object": "da64f652-56b6-44a7-a10a-3583d8551429"
		},
		"77ba817c-a1ef-4154-91da-aa227af4c325": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490,103 490,48.5",
			"sourceSymbol": "aa02b10b-7c0e-41c8-afe9-76ce6699f717",
			"targetSymbol": "91f039ef-139c-4851-9ea4-494b3a179985",
			"object": "f7a2d4b5-f6c5-43c5-b734-d32817cb31d4"
		},
		"5c699048-e209-4def-8fbe-158d4d3dcc81": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490.5,22.5 490.5,-41.5",
			"sourceSymbol": "91f039ef-139c-4851-9ea4-494b3a179985",
			"targetSymbol": "a0392fe1-9986-4a7f-9f85-49f21177de52",
			"object": "da17364e-93c7-4e2e-9b45-7f17e239fdf6"
		},
		"44e61e34-b5b5-49db-896f-6d35047345c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 894,
			"y": 96,
			"width": 100,
			"height": 60,
			"object": "ceedd507-8541-44ad-88d5-0ff109f04309"
		},
		"4602bc55-37fe-4ce3-9b33-9c5ef781f032": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "944,125 1085,125",
			"sourceSymbol": "44e61e34-b5b5-49db-896f-6d35047345c3",
			"targetSymbol": "d2b8b60e-6648-4cd5-84a0-2fedffd58beb",
			"object": "69ad21b5-95b6-4071-b595-de66fdec5909"
		},
		"d2b8b60e-6648-4cd5-84a0-2fedffd58beb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1064,
			"y": 103,
			"object": "f18a6fc3-cf9b-4ab0-8ee3-2655e0cdad28"
		},
		"b6f78bd2-bbc8-492c-b06b-81d0a4e75c63": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1085,125.22265625 1190.5231710270605,125.22265625",
			"sourceSymbol": "d2b8b60e-6648-4cd5-84a0-2fedffd58beb",
			"targetSymbol": "a2d29eae-1385-491f-a29d-182c0026a509",
			"object": "b229602c-aecd-469d-ae12-ed95666b63e3"
		},
		"c29bfe00-a836-49de-8678-131177b44769": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1173,
			"y": 215,
			"width": 100,
			"height": 60,
			"object": "14af6b4b-a7ef-49f2-95d5-65cc818004cd"
		},
		"0a41b862-4edf-49cf-b7a5-acda73bb355b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1085,144.5 1085,245 1223,245",
			"sourceSymbol": "d2b8b60e-6648-4cd5-84a0-2fedffd58beb",
			"targetSymbol": "c29bfe00-a836-49de-8678-131177b44769",
			"object": "d7df8d03-afd3-4f8a-b64c-20167a20c85e"
		},
		"772a14dd-5a40-4cc7-80ed-d4da5d16988b": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1463.5,
			"y": 227.5,
			"width": 35,
			"height": 35,
			"object": "0db24abd-b370-4fa4-b520-9add3f70e58c"
		},
		"0da647e8-0f0c-4881-89fe-679c99877e00": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1223,245 1464,245",
			"sourceSymbol": "c29bfe00-a836-49de-8678-131177b44769",
			"targetSymbol": "772a14dd-5a40-4cc7-80ed-d4da5d16988b",
			"object": "2bd3810d-db35-4361-ada6-fd5c599c2cb7"
		},
		"a2d29eae-1385-491f-a29d-182c0026a509": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1173,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "d7a1e99f-8e35-4e49-9063-18532d4d7782"
		},
		"63f28fe3-fe70-47e8-a140-8cf13f81c3d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1223,124 1351,124",
			"sourceSymbol": "a2d29eae-1385-491f-a29d-182c0026a509",
			"targetSymbol": "03ec31fb-44bd-487d-89c5-51e966003cab",
			"object": "8d5701a9-5acc-46b1-b70c-d821cddcdd0a"
		},
		"4b805c48-6ba4-41cb-b8da-ecf66d9f2acc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490,-71 490,-159",
			"sourceSymbol": "a0392fe1-9986-4a7f-9f85-49f21177de52",
			"targetSymbol": "a5de19e7-1ebd-4441-9a7c-d577e96a7dbb",
			"object": "499b68d2-432d-4441-b8d7-204b868ee611"
		},
		"a5de19e7-1ebd-4441-9a7c-d577e96a7dbb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 440,
			"y": -189,
			"width": 100,
			"height": 60,
			"object": "8b109877-c582-4f05-b8a0-ce0ddfde70f1"
		},
		"dc8dbffd-e4da-4f00-8028-ad3840882d63": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 656,
			"y": -180,
			"object": "0078d6d2-2e0a-4b77-81b5-f4a50a9509f9"
		},
		"90937469-6996-4c67-b6ca-06813fce8908": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "490,-159 656.5,-159",
			"sourceSymbol": "a5de19e7-1ebd-4441-9a7c-d577e96a7dbb",
			"targetSymbol": "dc8dbffd-e4da-4f00-8028-ad3840882d63",
			"object": "ea2cba6f-97c6-404f-8177-03b4c6f816d4"
		},
		"93c31650-ed3b-4a9d-b0ed-8983dfbbbd50": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "676.8426841082423,-159 676.8426841082423,96.5625",
			"sourceSymbol": "dc8dbffd-e4da-4f00-8028-ad3840882d63",
			"targetSymbol": "424b5f1c-f5eb-4d39-aaee-e3e5b5fb672a",
			"object": "c1a6aed8-332e-4838-ad64-a30eef0633bd"
		},
		"64b3e831-0523-493a-9635-0a8178bd2f9f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "677,-159 1085,-159 1085,103.5",
			"sourceSymbol": "dc8dbffd-e4da-4f00-8028-ad3840882d63",
			"targetSymbol": "d2b8b60e-6648-4cd5-84a0-2fedffd58beb",
			"object": "ff6b30ee-9c89-4e20-986a-ecdb3d439034"
		},
		"e8e99508-1296-4579-8376-6a25edcb2072": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1471,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "2e5e28dc-d7fa-4e81-b7c1-f902d40a3265"
		},
		"0580e9b4-0830-4c87-bbbf-751a5ae1e160": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1521,124 1665,124",
			"sourceSymbol": "e8e99508-1296-4579-8376-6a25edcb2072",
			"targetSymbol": "7f7169fc-e22b-4948-9698-f9bdb2c9c642",
			"object": "75cbb213-77ee-4d43-972a-1cc7d6585a7c"
		},
		"7f7169fc-e22b-4948-9698-f9bdb2c9c642": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1615,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "ed286fe9-ff39-49af-86ec-590bbaa1015e"
		},
		"9fa93836-3ed1-4d88-b688-08644f2f2d75": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1665,123.75 1978.5,123.75",
			"sourceSymbol": "7f7169fc-e22b-4948-9698-f9bdb2c9c642",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "2e887991-d897-4fc7-ab92-94c51bb877d0"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 34,
			"startevent": 1,
			"endevent": 2,
			"servicetask": 8,
			"scripttask": 7,
			"mailtask": 2,
			"exclusivegateway": 3
		},
		"0f29f8fc-a0f2-4a03-8d83-fe87b2ab0033": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "RELEASE for Purchase requesition ${context.ID}/${context.ItemNumber}",
			"reference": "/webcontent/ReleaseLineItem/ReleaseNotification.html",
			"id": "maildefinition1"
		},
		"905f3a57-d50c-450b-a8a2-6faa970b86c7": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "Purchase requisition ${context.ID}/${context.ItemNumber} Release failed",
			"text": "Dear User,\n\nErrors was received while trying to Release Purchase Requisition ${context.ID}/${context.ItemNumber} by the Process Administrator.\n\nPurchase requisition number: ${context.ID}\nPurchase requisition Line Item: ${context.ItemNumber}\n\n${context.AllErrorsText}\n\n\nThis is an automatically created message.",
			"id": "maildefinition2"
		},
		"f1adfe0c-1fbc-44be-8827-eb6b930cf2cf": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseLineItem/PrepareContext.js",
			"id": "scripttask7",
			"name": "Prepare context"
		},
		"b8dca232-48d5-4098-9496-25a3ab9c5e26": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 310,
			"y": 94,
			"width": 100,
			"height": 60,
			"object": "f1adfe0c-1fbc-44be-8827-eb6b930cf2cf"
		},
		"e0cf9fa7-50d5-4e1b-b1de-601b9829e601": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "f1adfe0c-1fbc-44be-8827-eb6b930cf2cf",
			"targetRef": "7f0ad2e6-40be-4719-9508-97ec35c92e49"
		},
		"c0341d9b-5ec0-416b-807e-9f3a9838fef7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "360,124 490,124",
			"sourceSymbol": "b8dca232-48d5-4098-9496-25a3ab9c5e26",
			"targetSymbol": "aa02b10b-7c0e-41c8-afe9-76ce6699f717",
			"object": "e0cf9fa7-50d5-4e1b-b1de-601b9829e601"
		}
	}
}