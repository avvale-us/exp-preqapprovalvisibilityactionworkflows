{
	"contents": {
		"5bcf7257-1afe-4266-a03a-c2efea382e16": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "ReleaseHeader",
			"subject": "Release Purchase Requisition ${context.DocumentId}",
			"businessKey": "",
			"name": "ReleaseHeader",
			"documentation": "ReleaseHeader",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				},
				"7a9811a6-10cd-4c19-9db1-fa080052049a": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"f4049be5-7b6a-4e2b-bae9-e0f35c25ff9b": {
					"name": "Get workflow context"
				},
				"b95b9828-ae46-498f-98ec-4df1c464000f": {
					"name": "Get Line Item Context"
				},
				"ec975236-4d86-4ce7-a01f-dd3b8b297b31": {
					"name": "Release Strategy?"
				},
				"0af776ef-7c1d-43d2-8be3-44755479e56d": {
					"name": "Prepare Payload for Release Line Item"
				},
				"71ce8ec9-23c7-4d46-a9c4-6bfcc8a5cdd4": {
					"name": "Prepare Payload for Update Line Item"
				},
				"7ce8df08-227a-4f98-96b7-2dd4d25f8742": {
					"name": "Release Line Item"
				},
				"7f0a201d-46ff-47e3-a976-64a5dd5e3617": {
					"name": "Update Line Item"
				},
				"22048ae6-7c57-4cc9-beb0-79306f3a96ff": {
					"name": "Check Release errors"
				},
				"5ad04d25-54a0-4249-b1b3-246b6214bc5f": {
					"name": "Any errors?"
				},
				"ce8e998e-b179-43af-807c-3c9ba73ceacc": {
					"name": "Cancel Approval Workflow"
				},
				"4c8314a9-dac0-48e1-80b7-47e98cf838ec": {
					"name": "Notify Buyer"
				},
				"2ca3055f-b6fb-407f-b6b8-e7fc692a5774": {
					"name": "Notify Requestor"
				},
				"2d9a35f7-c1cc-4491-a915-650fa7a95aaf": {
					"name": "InstanceId"
				},
				"adafbbd5-29d5-48a7-8d6c-2a7228bb8979": {
					"name": "Initial"
				},
				"d5e79071-9d88-4e5f-9e50-d1059e9d34ed": {
					"name": "Get Item data"
				},
				"c3d76a1f-574c-4704-aab9-cf5f1dc24a63": {
					"name": "all items released?"
				},
				"09e38f22-35a7-4f26-ba65-c71c2c2c8b39": {
					"name": "Check update errors"
				},
				"39b9db13-3e5b-46e5-a996-5aed46379041": {
					"name": "update errors?"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"32b3c0ed-ae6f-4881-81d4-28d9768f8eb7": {
					"name": "SequenceFlow2"
				},
				"17671c35-088e-45e1-9b96-00fafaa4f37b": {
					"name": "SequenceFlow3"
				},
				"f934e301-984c-46d5-93a1-200b8297509a": {
					"name": "Release Strategy"
				},
				"2b1d860c-185e-47d9-a7c4-47ff3731b35c": {
					"name": "SequenceFlow5"
				},
				"5a1d9e18-11f9-47f7-9830-78bc3930192f": {
					"name": "SequenceFlow6"
				},
				"a0440d4b-502f-48ae-b7f3-f905611267a8": {
					"name": "Requisition block"
				},
				"e8f74d3a-eb54-4fc0-a73e-a1835d55bb00": {
					"name": "SequenceFlow8"
				},
				"ac705330-ebfd-4b7b-ae30-a3696eb6ea87": {
					"name": "SequenceFlow9"
				},
				"0006fdf1-e129-43c1-a568-8211b1286dc7": {
					"name": "No errors"
				},
				"25af2b88-dcfc-46ab-854d-1b62f5c1da2f": {
					"name": "SequenceFlow12"
				},
				"0b9ccb63-4a00-4eab-bc3a-ac22a09ccf22": {
					"name": "SequenceFlow13"
				},
				"f5ccd084-6bb7-47ca-9558-05066d1bd405": {
					"name": "errors"
				},
				"b740d211-940b-4727-b087-33df18059986": {
					"name": "SequenceFlow16"
				},
				"07785b5d-4761-4468-9da0-499d85ecdf44": {
					"name": "Not empty"
				},
				"5714ccc8-93ef-49f0-bd5e-a2423b572fd9": {
					"name": "Empty"
				},
				"ca303d1c-28fe-4fc8-b7f5-15573bc0083b": {
					"name": "SequenceFlow19"
				},
				"26cc87bb-6fb3-49c2-98aa-ea0de2850c45": {
					"name": "SequenceFlow20"
				},
				"883e646d-0938-47bf-a09c-cdbe43605278": {
					"name": "complete"
				},
				"325111da-bd06-430e-9bde-a1f3881d2414": {
					"name": "next item"
				},
				"c499ba41-4a45-45ce-9740-fe8cf2897562": {
					"name": "SequenceFlow23"
				},
				"84d9aad7-cdb2-4496-934b-5d7e4ce68a72": {
					"name": "SequenceFlow24"
				},
				"adf5d39b-f060-4bfb-8dce-3f9f17da1a50": {
					"name": "no errors"
				},
				"56ddb9c8-4029-4d0c-8439-4c00ac8fdf1d": {
					"name": "errors"
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
		"7a9811a6-10cd-4c19-9db1-fa080052049a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2"
		},
		"f4049be5-7b6a-4e2b-bae9-e0f35c25ff9b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowInstanceId}",
			"id": "servicetask1",
			"name": "Get workflow context"
		},
		"b95b9828-ae46-498f-98ec-4df1c464000f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}/context",
			"httpMethod": "GET",
			"responseVariable": "${context.WorkflowContext}",
			"id": "servicetask2",
			"name": "Get Line Item Context"
		},
		"ec975236-4d86-4ce7-a01f-dd3b8b297b31": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Release Strategy?",
			"default": "f934e301-984c-46d5-93a1-200b8297509a"
		},
		"0af776ef-7c1d-43d2-8be3-44755479e56d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/PrepareReleasePRBapiRequest.js",
			"id": "scripttask1",
			"name": "Prepare Payload for Release Line Item"
		},
		"71ce8ec9-23c7-4d46-a9c4-6bfcc8a5cdd4": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/PrepareUpdatePRBapiRequest.js",
			"id": "scripttask2",
			"name": "Prepare Payload for Update Line Item"
		},
		"7ce8df08-227a-4f98-96b7-2dd4d25f8742": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_RELEASE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiReleaseData.Request}",
			"responseVariable": "${context.RequisitionBapiReleaseData.Response}",
			"id": "servicetask3",
			"name": "Release Line Item"
		},
		"7f0a201d-46ff-47e3-a976-64a5dd5e3617": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "CPI",
			"path": "/http/PURCHASE_REQUISITION_CHANGE",
			"httpMethod": "POST",
			"requestVariable": "${context.RequisitionBapiChangeData.Request}",
			"responseVariable": "${context.RequisitionBapiChangeData.Response}",
			"id": "servicetask4",
			"name": "Update Line Item"
		},
		"22048ae6-7c57-4cc9-beb0-79306f3a96ff": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/CheckReleaseErrors.js",
			"id": "scripttask3",
			"name": "Check Release errors"
		},
		"5ad04d25-54a0-4249-b1b3-246b6214bc5f": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Any errors?",
			"default": "0006fdf1-e129-43c1-a568-8211b1286dc7"
		},
		"ce8e998e-b179-43af-807c-3c9ba73ceacc": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Workflow",
			"path": "/v1/workflow-instances/${context.InstanceId}",
			"httpMethod": "PATCH",
			"requestVariable": "${context.WorkflowCancelRequest}",
			"responseVariable": "${context.WorkflowCancelResponse}",
			"id": "servicetask5",
			"name": "Cancel Approval Workflow"
		},
		"4c8314a9-dac0-48e1-80b7-47e98cf838ec": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Notify Buyer",
			"mailDefinitionRef": "b5ffc99e-12d4-4165-a0ad-ce6280ed7094"
		},
		"2ca3055f-b6fb-407f-b6b8-e7fc692a5774": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Notify Requestor",
			"mailDefinitionRef": "d2e53371-ece6-42db-9d71-f5fa4e21af47"
		},
		"2d9a35f7-c1cc-4491-a915-650fa7a95aaf": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "InstanceId",
			"default": "07785b5d-4761-4468-9da0-499d85ecdf44"
		},
		"adafbbd5-29d5-48a7-8d6c-2a7228bb8979": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/InitialHeaderRelease.js",
			"id": "scripttask4",
			"name": "Initial"
		},
		"d5e79071-9d88-4e5f-9e50-d1059e9d34ed": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/GetItemData.js",
			"id": "scripttask5",
			"name": "Get Item data"
		},
		"c3d76a1f-574c-4704-aab9-cf5f1dc24a63": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "all items released?",
			"default": "883e646d-0938-47bf-a09c-cdbe43605278"
		},
		"09e38f22-35a7-4f26-ba65-c71c2c2c8b39": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ReleaseHeader/CheckHeaderUpdateErrors.js",
			"id": "scripttask6",
			"name": "Check update errors"
		},
		"39b9db13-3e5b-46e5-a996-5aed46379041": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "update errors?",
			"default": "adf5d39b-f060-4bfb-8dce-3f9f17da1a50"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "2d9a35f7-c1cc-4491-a915-650fa7a95aaf"
		},
		"32b3c0ed-ae6f-4881-81d4-28d9768f8eb7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "f4049be5-7b6a-4e2b-bae9-e0f35c25ff9b",
			"targetRef": "b95b9828-ae46-498f-98ec-4df1c464000f"
		},
		"17671c35-088e-45e1-9b96-00fafaa4f37b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "b95b9828-ae46-498f-98ec-4df1c464000f",
			"targetRef": "adafbbd5-29d5-48a7-8d6c-2a7228bb8979"
		},
		"f934e301-984c-46d5-93a1-200b8297509a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "Release Strategy",
			"sourceRef": "ec975236-4d86-4ce7-a01f-dd3b8b297b31",
			"targetRef": "0af776ef-7c1d-43d2-8be3-44755479e56d"
		},
		"2b1d860c-185e-47d9-a7c4-47ff3731b35c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "0af776ef-7c1d-43d2-8be3-44755479e56d",
			"targetRef": "7ce8df08-227a-4f98-96b7-2dd4d25f8742"
		},
		"5a1d9e18-11f9-47f7-9830-78bc3930192f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "7ce8df08-227a-4f98-96b7-2dd4d25f8742",
			"targetRef": "22048ae6-7c57-4cc9-beb0-79306f3a96ff"
		},
		"a0440d4b-502f-48ae-b7f3-f905611267a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.WorkflowContext.WFBackendConfig==\"RB\"}",
			"id": "sequenceflow7",
			"name": "Requisition block",
			"sourceRef": "ec975236-4d86-4ce7-a01f-dd3b8b297b31",
			"targetRef": "71ce8ec9-23c7-4d46-a9c4-6bfcc8a5cdd4"
		},
		"e8f74d3a-eb54-4fc0-a73e-a1835d55bb00": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "71ce8ec9-23c7-4d46-a9c4-6bfcc8a5cdd4",
			"targetRef": "7f0a201d-46ff-47e3-a976-64a5dd5e3617"
		},
		"ac705330-ebfd-4b7b-ae30-a3696eb6ea87": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "22048ae6-7c57-4cc9-beb0-79306f3a96ff",
			"targetRef": "c3d76a1f-574c-4704-aab9-cf5f1dc24a63"
		},
		"0006fdf1-e129-43c1-a568-8211b1286dc7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "No errors",
			"sourceRef": "5ad04d25-54a0-4249-b1b3-246b6214bc5f",
			"targetRef": "ce8e998e-b179-43af-807c-3c9ba73ceacc"
		},
		"25af2b88-dcfc-46ab-854d-1b62f5c1da2f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "ce8e998e-b179-43af-807c-3c9ba73ceacc",
			"targetRef": "4c8314a9-dac0-48e1-80b7-47e98cf838ec"
		},
		"0b9ccb63-4a00-4eab-bc3a-ac22a09ccf22": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "4c8314a9-dac0-48e1-80b7-47e98cf838ec",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"f5ccd084-6bb7-47ca-9558-05066d1bd405": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.allErrors}",
			"id": "sequenceflow14",
			"name": "errors",
			"sourceRef": "5ad04d25-54a0-4249-b1b3-246b6214bc5f",
			"targetRef": "2ca3055f-b6fb-407f-b6b8-e7fc692a5774"
		},
		"b740d211-940b-4727-b087-33df18059986": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "2ca3055f-b6fb-407f-b6b8-e7fc692a5774",
			"targetRef": "7a9811a6-10cd-4c19-9db1-fa080052049a"
		},
		"07785b5d-4761-4468-9da0-499d85ecdf44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "Not empty",
			"sourceRef": "2d9a35f7-c1cc-4491-a915-650fa7a95aaf",
			"targetRef": "f4049be5-7b6a-4e2b-bae9-e0f35c25ff9b"
		},
		"5714ccc8-93ef-49f0-bd5e-a2423b572fd9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.InstanceId == null}",
			"id": "sequenceflow18",
			"name": "Empty",
			"sourceRef": "2d9a35f7-c1cc-4491-a915-650fa7a95aaf",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ca303d1c-28fe-4fc8-b7f5-15573bc0083b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "adafbbd5-29d5-48a7-8d6c-2a7228bb8979",
			"targetRef": "d5e79071-9d88-4e5f-9e50-d1059e9d34ed"
		},
		"26cc87bb-6fb3-49c2-98aa-ea0de2850c45": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "d5e79071-9d88-4e5f-9e50-d1059e9d34ed",
			"targetRef": "ec975236-4d86-4ce7-a01f-dd3b8b297b31"
		},
		"883e646d-0938-47bf-a09c-cdbe43605278": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "complete",
			"sourceRef": "c3d76a1f-574c-4704-aab9-cf5f1dc24a63",
			"targetRef": "5ad04d25-54a0-4249-b1b3-246b6214bc5f"
		},
		"325111da-bd06-430e-9bde-a1f3881d2414": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.isLastItem == false}",
			"id": "sequenceflow22",
			"name": "next item",
			"sourceRef": "c3d76a1f-574c-4704-aab9-cf5f1dc24a63",
			"targetRef": "d5e79071-9d88-4e5f-9e50-d1059e9d34ed"
		},
		"c499ba41-4a45-45ce-9740-fe8cf2897562": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "7f0a201d-46ff-47e3-a976-64a5dd5e3617",
			"targetRef": "09e38f22-35a7-4f26-ba65-c71c2c2c8b39"
		},
		"84d9aad7-cdb2-4496-934b-5d7e4ce68a72": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "09e38f22-35a7-4f26-ba65-c71c2c2c8b39",
			"targetRef": "39b9db13-3e5b-46e5-a996-5aed46379041"
		},
		"adf5d39b-f060-4bfb-8dce-3f9f17da1a50": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "no errors",
			"sourceRef": "39b9db13-3e5b-46e5-a996-5aed46379041",
			"targetRef": "0af776ef-7c1d-43d2-8be3-44755479e56d"
		},
		"56ddb9c8-4029-4d0c-8439-4c00ac8fdf1d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.bapiUpdateCallErrors}",
			"id": "sequenceflow26",
			"name": "errors",
			"sourceRef": "39b9db13-3e5b-46e5-a996-5aed46379041",
			"targetRef": "c3d76a1f-574c-4704-aab9-cf5f1dc24a63"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"11331c1e-3db5-444f-a597-026169cbc7a6": {},
				"36528934-88f1-4fad-9eb1-1de3efff90c2": {},
				"63399772-04d3-42ac-9246-7f044e2868ac": {},
				"1c5c687d-dac2-44de-9dd9-a6c4d07874a4": {},
				"2cbb409c-f705-4c24-b59c-2ab89a32328a": {},
				"b2fe5308-aa56-472e-ac1d-76a0300a3c2c": {},
				"6c7ea4df-10c7-40f2-9814-b3198babb27e": {},
				"5921c6dc-9f4d-4606-880c-2a8345762266": {},
				"b272b254-5e7d-4c13-9fb6-64052994edae": {},
				"7eef05c1-4013-4abc-9b57-6aec45db1c4d": {},
				"9ba679c1-702c-43fe-a21a-ec8d9b30b06f": {},
				"1b9ec0ec-c08c-40ad-84bd-ef4b144ff6b8": {},
				"db2a5aec-a2d9-4dd3-b813-2ceffc657848": {},
				"a8fd9c00-fd3b-410b-8113-56bd12a6bad4": {},
				"937da9cf-7cc3-4f1e-bdff-cb85e85dcaae": {},
				"9b1e7c6a-1025-47eb-bba6-d0024b053066": {},
				"de3225a8-018c-4877-826e-d41bd985ca6d": {},
				"63e0f9b6-8f3e-4813-a4e1-c030f5ea0cde": {},
				"767d4b32-4f7c-4ab3-82e0-bc2203f5f969": {},
				"d5af8cf2-576e-4a28-87d6-c79e136f6371": {},
				"9e76d5f3-0e21-419a-adf1-a8fae51556e4": {},
				"8ff6049d-bc5a-49d8-bcc4-856f3e3bfede": {},
				"252275b5-cf2a-44ef-b532-7897fd86ccef": {},
				"97f92e54-d8bd-4d22-b93a-b6b411949fab": {},
				"b579a0bc-bc82-4821-9782-0e8cad5e4e61": {},
				"523e7a98-db41-47b2-a3ad-eabdc348b37f": {},
				"4d8bb5c5-844a-4b1f-ad45-27b1750eae1d": {},
				"e7709f3f-84db-427e-85d3-b2f21bf040b6": {},
				"038315ff-92e3-4b21-a5db-0fea1f06e53d": {},
				"8facb664-ced2-4138-ad70-911c66929cae": {},
				"9d0710b6-45a1-4da2-9b49-e3a9f6269953": {},
				"a0c1f469-5858-4ef8-9287-da2703971ff2": {},
				"e2f54c9d-b504-4ce2-b7e8-a42c8db06d2c": {},
				"51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7": {},
				"4b944a9a-2ade-456d-b543-fd9c451ffd36": {},
				"1b7ef86a-ddb4-4280-a1cf-acfa8d4ac139": {},
				"be8211b9-1f3f-47dc-bb39-325058fc291b": {},
				"535c8abe-f083-4249-ae8b-30cd4ff046a2": {},
				"27ac5763-f67c-4db0-9f88-e48980eacffb": {},
				"60b8253c-68af-4f76-99b5-acddf6fa3f51": {},
				"b06d68f7-20f4-42f6-b1ec-142e4317e215": {},
				"9e558499-6d29-4400-9231-dac6e2235cdb": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -518,
			"y": 99,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1365,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-502,115 -410,115",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "4d8bb5c5-844a-4b1f-ad45-27b1750eae1d",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"11331c1e-3db5-444f-a597-026169cbc7a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -358,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "f4049be5-7b6a-4e2b-bae9-e0f35c25ff9b"
		},
		"36528934-88f1-4fad-9eb1-1de3efff90c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-308,114 -185,114",
			"sourceSymbol": "11331c1e-3db5-444f-a597-026169cbc7a6",
			"targetSymbol": "63399772-04d3-42ac-9246-7f044e2868ac",
			"object": "32b3c0ed-ae6f-4881-81d4-28d9768f8eb7"
		},
		"63399772-04d3-42ac-9246-7f044e2868ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -235,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "b95b9828-ae46-498f-98ec-4df1c464000f"
		},
		"1c5c687d-dac2-44de-9dd9-a6c4d07874a4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-185,114 -61,114",
			"sourceSymbol": "63399772-04d3-42ac-9246-7f044e2868ac",
			"targetSymbol": "8facb664-ced2-4138-ad70-911c66929cae",
			"object": "17671c35-088e-45e1-9b96-00fafaa4f37b"
		},
		"2cbb409c-f705-4c24-b59c-2ab89a32328a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 224,
			"y": 94,
			"object": "ec975236-4d86-4ce7-a01f-dd3b8b297b31"
		},
		"b2fe5308-aa56-472e-ac1d-76a0300a3c2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,114.5 435,114.5",
			"sourceSymbol": "2cbb409c-f705-4c24-b59c-2ab89a32328a",
			"targetSymbol": "6c7ea4df-10c7-40f2-9814-b3198babb27e",
			"object": "f934e301-984c-46d5-93a1-200b8297509a"
		},
		"6c7ea4df-10c7-40f2-9814-b3198babb27e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 385,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "0af776ef-7c1d-43d2-8be3-44755479e56d"
		},
		"5921c6dc-9f4d-4606-880c-2a8345762266": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "435,114 564,114",
			"sourceSymbol": "6c7ea4df-10c7-40f2-9814-b3198babb27e",
			"targetSymbol": "7eef05c1-4013-4abc-9b57-6aec45db1c4d",
			"object": "2b1d860c-185e-47d9-a7c4-47ff3731b35c"
		},
		"b272b254-5e7d-4c13-9fb6-64052994edae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 195,
			"y": -33,
			"width": 100,
			"height": 60,
			"object": "71ce8ec9-23c7-4d46-a9c4-6bfcc8a5cdd4"
		},
		"7eef05c1-4013-4abc-9b57-6aec45db1c4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 514,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "7ce8df08-227a-4f98-96b7-2dd4d25f8742"
		},
		"9ba679c1-702c-43fe-a21a-ec8d9b30b06f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "564,114 690,114",
			"sourceSymbol": "7eef05c1-4013-4abc-9b57-6aec45db1c4d",
			"targetSymbol": "937da9cf-7cc3-4f1e-bdff-cb85e85dcaae",
			"object": "5a1d9e18-11f9-47f7-9830-78bc3930192f"
		},
		"1b9ec0ec-c08c-40ad-84bd-ef4b144ff6b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,94.5 245,26.5",
			"sourceSymbol": "2cbb409c-f705-4c24-b59c-2ab89a32328a",
			"targetSymbol": "b272b254-5e7d-4c13-9fb6-64052994edae",
			"object": "a0440d4b-502f-48ae-b7f3-f905611267a8"
		},
		"db2a5aec-a2d9-4dd3-b813-2ceffc657848": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 195,
			"y": -120,
			"width": 100,
			"height": 60,
			"object": "7f0a201d-46ff-47e3-a976-64a5dd5e3617"
		},
		"a8fd9c00-fd3b-410b-8113-56bd12a6bad4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "244.75,-3 244.75,-62",
			"sourceSymbol": "b272b254-5e7d-4c13-9fb6-64052994edae",
			"targetSymbol": "db2a5aec-a2d9-4dd3-b813-2ceffc657848",
			"object": "e8f74d3a-eb54-4fc0-a73e-a1835d55bb00"
		},
		"937da9cf-7cc3-4f1e-bdff-cb85e85dcaae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 640,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "22048ae6-7c57-4cc9-beb0-79306f3a96ff"
		},
		"9b1e7c6a-1025-47eb-bba6-d0024b053066": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "690,115.5 815,115.5",
			"sourceSymbol": "937da9cf-7cc3-4f1e-bdff-cb85e85dcaae",
			"targetSymbol": "51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7",
			"object": "ac705330-ebfd-4b7b-ae30-a3696eb6ea87"
		},
		"de3225a8-018c-4877-826e-d41bd985ca6d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 986,
			"y": 98,
			"object": "5ad04d25-54a0-4249-b1b3-246b6214bc5f"
		},
		"63e0f9b6-8f3e-4813-a4e1-c030f5ea0cde": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1007,117.5 1156,117.5",
			"sourceSymbol": "de3225a8-018c-4877-826e-d41bd985ca6d",
			"targetSymbol": "767d4b32-4f7c-4ab3-82e0-bc2203f5f969",
			"object": "0006fdf1-e129-43c1-a568-8211b1286dc7"
		},
		"767d4b32-4f7c-4ab3-82e0-bc2203f5f969": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1106,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ce8e998e-b179-43af-807c-3c9ba73ceacc"
		},
		"d5af8cf2-576e-4a28-87d6-c79e136f6371": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1156,115 1283,115",
			"sourceSymbol": "767d4b32-4f7c-4ab3-82e0-bc2203f5f969",
			"targetSymbol": "9e76d5f3-0e21-419a-adf1-a8fae51556e4",
			"object": "25af2b88-dcfc-46ab-854d-1b62f5c1da2f"
		},
		"9e76d5f3-0e21-419a-adf1-a8fae51556e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1233,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "4c8314a9-dac0-48e1-80b7-47e98cf838ec"
		},
		"8ff6049d-bc5a-49d8-bcc4-856f3e3bfede": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1283,114.75 1382.5,114.75",
			"sourceSymbol": "9e76d5f3-0e21-419a-adf1-a8fae51556e4",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0b9ccb63-4a00-4eab-bc3a-ac22a09ccf22"
		},
		"252275b5-cf2a-44ef-b532-7897fd86ccef": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 957,
			"y": -20,
			"width": 100,
			"height": 60,
			"object": "2ca3055f-b6fb-407f-b6b8-e7fc692a5774"
		},
		"97f92e54-d8bd-4d22-b93a-b6b411949fab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1007,119 1007,39.5",
			"sourceSymbol": "de3225a8-018c-4877-826e-d41bd985ca6d",
			"targetSymbol": "252275b5-cf2a-44ef-b532-7897fd86ccef",
			"object": "f5ccd084-6bb7-47ca-9558-05066d1bd405"
		},
		"b579a0bc-bc82-4821-9782-0e8cad5e4e61": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1365,
			"y": -7.5,
			"width": 35,
			"height": 35,
			"object": "7a9811a6-10cd-4c19-9db1-fa080052049a"
		},
		"523e7a98-db41-47b2-a3ad-eabdc348b37f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1007,10 1382.5,10",
			"sourceSymbol": "252275b5-cf2a-44ef-b532-7897fd86ccef",
			"targetSymbol": "b579a0bc-bc82-4821-9782-0e8cad5e4e61",
			"object": "b740d211-940b-4727-b087-33df18059986"
		},
		"4d8bb5c5-844a-4b1f-ad45-27b1750eae1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -431,
			"y": 94,
			"object": "2d9a35f7-c1cc-4491-a915-650fa7a95aaf"
		},
		"e7709f3f-84db-427e-85d3-b2f21bf040b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-410,114.5 -308,114.5",
			"sourceSymbol": "4d8bb5c5-844a-4b1f-ad45-27b1750eae1d",
			"targetSymbol": "11331c1e-3db5-444f-a597-026169cbc7a6",
			"object": "07785b5d-4761-4468-9da0-499d85ecdf44"
		},
		"038315ff-92e3-4b21-a5db-0fea1f06e53d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-410,135.5 -410,187.5 1382.5,187.5 1382.5,132.5",
			"sourceSymbol": "4d8bb5c5-844a-4b1f-ad45-27b1750eae1d",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "5714ccc8-93ef-49f0-bd5e-a2423b572fd9"
		},
		"8facb664-ced2-4138-ad70-911c66929cae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -111,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "adafbbd5-29d5-48a7-8d6c-2a7228bb8979"
		},
		"9d0710b6-45a1-4da2-9b49-e3a9f6269953": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-61,114 74,114",
			"sourceSymbol": "8facb664-ced2-4138-ad70-911c66929cae",
			"targetSymbol": "a0c1f469-5858-4ef8-9287-da2703971ff2",
			"object": "ca303d1c-28fe-4fc8-b7f5-15573bc0083b"
		},
		"a0c1f469-5858-4ef8-9287-da2703971ff2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 24,
			"y": 84,
			"width": 100,
			"height": 60,
			"object": "d5e79071-9d88-4e5f-9e50-d1059e9d34ed"
		},
		"e2f54c9d-b504-4ce2-b7e8-a42c8db06d2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "74,114.5 245,114.5",
			"sourceSymbol": "a0c1f469-5858-4ef8-9287-da2703971ff2",
			"targetSymbol": "2cbb409c-f705-4c24-b59c-2ab89a32328a",
			"object": "26cc87bb-6fb3-49c2-98aa-ea0de2850c45"
		},
		"51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 797,
			"y": 97,
			"object": "c3d76a1f-574c-4704-aab9-cf5f1dc24a63"
		},
		"4b944a9a-2ade-456d-b543-fd9c451ffd36": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "818,118.5 1007,118.5",
			"sourceSymbol": "51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7",
			"targetSymbol": "de3225a8-018c-4877-826e-d41bd985ca6d",
			"object": "883e646d-0938-47bf-a09c-cdbe43605278"
		},
		"1b7ef86a-ddb4-4280-a1cf-acfa8d4ac139": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "818,97.5 818,-227 74,-227 74,84.5",
			"sourceSymbol": "51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7",
			"targetSymbol": "a0c1f469-5858-4ef8-9287-da2703971ff2",
			"object": "325111da-bd06-430e-9bde-a1f3881d2414"
		},
		"be8211b9-1f3f-47dc-bb39-325058fc291b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 195,
			"y": -206,
			"width": 100,
			"height": 60,
			"object": "09e38f22-35a7-4f26-ba65-c71c2c2c8b39"
		},
		"535c8abe-f083-4249-ae8b-30cd4ff046a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,-90 245,-170",
			"sourceSymbol": "db2a5aec-a2d9-4dd3-b813-2ceffc657848",
			"targetSymbol": "be8211b9-1f3f-47dc-bb39-325058fc291b",
			"object": "c499ba41-4a45-45ce-9740-fe8cf2897562"
		},
		"27ac5763-f67c-4db0-9f88-e48980eacffb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 406,
			"y": -197,
			"object": "39b9db13-3e5b-46e5-a996-5aed46379041"
		},
		"60b8253c-68af-4f76-99b5-acddf6fa3f51": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "245,-176 406.5,-176",
			"sourceSymbol": "be8211b9-1f3f-47dc-bb39-325058fc291b",
			"targetSymbol": "27ac5763-f67c-4db0-9f88-e48980eacffb",
			"object": "84d9aad7-cdb2-4496-934b-5d7e4ce68a72"
		},
		"b06d68f7-20f4-42f6-b1ec-142e4317e215": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "427,-176 427,99",
			"sourceSymbol": "27ac5763-f67c-4db0-9f88-e48980eacffb",
			"targetSymbol": "6c7ea4df-10c7-40f2-9814-b3198babb27e",
			"object": "adf5d39b-f060-4bfb-8dce-3f9f17da1a50"
		},
		"9e558499-6d29-4400-9231-dac6e2235cdb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "427,-176 759,-176 759,118 797.5,118",
			"sourceSymbol": "27ac5763-f67c-4db0-9f88-e48980eacffb",
			"targetSymbol": "51ff31c9-5eea-4d74-a1d4-6a89cf0f28d7",
			"object": "56ddb9c8-4029-4d0c-8439-4c00ac8fdf1d"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 26,
			"startevent": 1,
			"endevent": 2,
			"servicetask": 5,
			"scripttask": 6,
			"mailtask": 2,
			"exclusivegateway": 5
		},
		"d2e53371-ece6-42db-9d71-f5fa4e21af47": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "Purchase Requisition ${context.WorkflowContext.ItemsCurrent[0].PREQ_NO} Release failed",
			"text": "Dear User,\n\nReceived errors while trying to Release Purchase Requisition ${context.WorkflowContext.ItemsCurrent[0].PREQ_NO} by the Process Administrator.\n\nErrors list:\n${context.AllErrorsText}\n\n\nThis is an automatically created message.",
			"id": "maildefinition1"
		},
		"b5ffc99e-12d4-4165-a0ad-ce6280ed7094": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.WorkflowContext.Requestor.Email}",
			"subject": "RELEASE for Purchase Requisition ${context.WorkflowContext.ItemsCurrent[0].PREQ_NO}",
			"text": "Dear User,\n\nRelease for Purchase requisition ${context.WorkflowContext.ItemsCurrent[0].PREQ_NO} completed by Process Administrator.\nApproval process was closed.\n\nThis is an automatically created message.",
			"id": "maildefinition2"
		}
	}
}