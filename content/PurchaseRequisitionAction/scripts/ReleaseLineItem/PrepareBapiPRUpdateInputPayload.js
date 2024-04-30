
var LineItemNew = $.context.ItemNew;
LineItemNew.REQ_BLOCKED = " ";

var requisitionBapiChangeData = {
    "Request": {
        "ItemData": {
            "ItemOld": $.context.WorkflowContext.LineItem,
            "ItemNew": LineItemNew
        }
    }
};

$.context.RequisitionBapiChangeData = requisitionBapiChangeData;


var workflowCancelData = {
	"status" : "CANCELED"
};
$.context.WorkflowCancelRequest = workflowCancelData;