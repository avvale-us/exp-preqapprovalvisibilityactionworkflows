var allItems = $.context.WorkflowContext.ItemsCurrent;
var lineItems = [];
(Array.isArray(allItems)) ? (lineItems = allItems) : (lineItems.push(allItems));
$.context.ItemListSize = lineItems.length - 1;

$.context.ItemIndex = -1;
$.context.isLastItem  = false;
$.context.allErrors = false;
$.context.AllErrorsText = "";

var workflowCancelData = {
	"status" : "CANCELED"
};
$.context.WorkflowCancelRequest = workflowCancelData;

if (!$.context.WorkflowContext.ItemsNew) {
    $.context.WorkflowContext.ItemsNew = $.context.WorkflowContext.ItemsCurrent;
}