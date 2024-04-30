var lineItems = $.context.WorkflowContext.ItemsCurrent;

var items = [];
var i = 0;
for (i = 0; i < lineItems.length; i++) {
    var curItem = {
        PREQ_ITEM: lineItems[i].PREQ_ITEM,
        DELETE_IND: "X"
    }
    items.push(curItem);
}

var requisitionBapiDeleteRequestData = {
	"Request" : {
		"BAPI_REQUISITION_DELETE": {
		    NUMBER: $.context.WorkflowContext.DocumentId,
	        REQUISITION_ITEMS_TO_DELETE: {
	            item: items
	        }
		}
	}
};

$.context.RequisitionBapiDeleteData = requisitionBapiDeleteRequestData;
$.context.workflowTerminated = true;

var workflowCancelData = {
	"status" : "CANCELED"
};
$.context.WorkflowCancelRequest = workflowCancelData;