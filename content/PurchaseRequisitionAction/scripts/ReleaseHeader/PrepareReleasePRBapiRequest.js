delete $.context.RequisitionBapiReleaseData;

var itemIndex = $.context.ItemIndex;

var requisitionBapiReleaseData = {
	"Request" : {
        "BAPI_REQUISITION_RELEASE" : {
            ITEM : $.context.WorkflowContext.ItemsNew[itemIndex].PREQ_ITEM,
            NO_COMMIT_WORK : "",
            NUMBER : $.context.WorkflowContext.ItemsNew[itemIndex].PREQ_NO,
            REL_CODE : $.context.WorkflowContext.ItemsNew[itemIndex].REL_STRAT,
            USE_EXCEPTIONS : ""
        }
    }
};

$.context.RequisitionBapiReleaseData = requisitionBapiReleaseData;