var itemListSize = $.context.ItemListSize;
var itemIndex = $.context.ItemIndex;
var allItems = $.context.WorkflowContext.ItemsCurrent;
var lineItems = [];
var WFBackendConfig = "";


itemIndex += 1;

(Array.isArray(allItems)) ? (lineItems = allItems) : (lineItems.push(allItems));

if (lineItems[itemIndex].REQ_BLOCKED == "3") {
    WFBackendConfig = "RB";
} else {
    WFBackendConfig = "RS";
}
$.context.WFBackendConfig = WFBackendConfig;

if (itemIndex === itemListSize) {
	$.context.isLastItem = true;
} else {
	$.context.isLastItem = false;
}
$.context.ItemIndex = itemIndex;
$.context.lineItemNumber = $.context.WorkflowContext.ItemsCurrent[itemIndex].PREQ_ITEM;