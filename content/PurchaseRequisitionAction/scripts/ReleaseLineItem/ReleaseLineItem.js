var item = {};
item = $.context.WorkflowContext.LineItem;

var requisitionBapiReleaseData = {
	"Request" : {
        "BAPI_REQUISITION_RELEASE" : {
            ITEM : item.PREQ_ITEM,
            NO_COMMIT_WORK : "",
            NUMBER : item.PREQ_NO,
            REL_CODE : item.REL_STRAT,
            USE_EXCEPTIONS : ""
        }
    }
};

$.context.WorkflowContext.Item = item;

$.context.RequisitionBapiReleaseData = requisitionBapiReleaseData;

var workflowCancelData = {
	"status" : "CANCELED"
};
$.context.WorkflowCancelRequest = workflowCancelData;