delete $.context.RequisitionBapiChangeData;

var itemIndex = $.context.ItemIndex;

$.context.WorkflowContext.ItemsNew[itemIndex].REQ_BLOCKED = " ";

var requisitionBapiChangeData = {
	"Request": {
		"ItemData" : {
			"ItemOld": $.context.WorkflowContext.ItemsCurrent[itemIndex],
			"ItemNew": $.context.WorkflowContext.ItemsNew[itemIndex]
		}		
	}
};

$.context.RequisitionBapiChangeData = requisitionBapiChangeData;