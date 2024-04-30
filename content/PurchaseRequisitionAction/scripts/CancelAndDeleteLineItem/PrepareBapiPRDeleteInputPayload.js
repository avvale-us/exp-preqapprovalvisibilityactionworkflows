var item = {};

// if ($.context.WorkflowContext.ItemData.ItemNew === undefined) {
//     if ($.context.WorkflowContext.Item === undefined) {
//         throw new Error("Item data not defined in the workflow context");
//     } else {
//         item = $.context.WorkflowContext.Item;
//     }
// } else {
//     item = $.context.WorkflowContext.ItemData.ItemNew;
// }

if ($.context.WorkflowContext.LineItem === undefined) {
        throw new Error("Item data not defined in the workflow context");
} else {
    item = $.context.WorkflowContext.LineItem;
}

var requisitionBapiDeleteRequestData = {
	"Request" : {
		"BAPI_REQUISITION_DELETE": {
            NUMBER: item.PREQ_NO,
	        REQUISITION_ITEMS_TO_DELETE: {
	            item: {
                    PREQ_ITEM: item.PREQ_ITEM,
                    DELETE_IND: "X"
	            }
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