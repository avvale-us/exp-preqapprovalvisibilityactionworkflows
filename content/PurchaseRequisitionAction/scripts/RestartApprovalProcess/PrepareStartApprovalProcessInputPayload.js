var item = {};
var isHeader = false;
var context = {};

// if ($.context.WorkflowContext.ItemData === undefined) {
//     if ($.context.WorkflowContext.Item === undefined) {
//         if ($.context.WorkflowContext.ItemsCurrent === undefined) {
//             throw new Error("Item data not defined in the workflow context");
//         } else {
//             isHeader = true;
//             item = $.context.WorkflowContext.ItemsCurrent[0];
//         }
//     } else {
//         item = $.context.WorkflowContext.Item;
//     }
// } else {
//     item = $.context.WorkflowContext.ItemData.ItemNew;
// }


    if ($.context.WorkflowContext.LineItem === undefined) {
        if ($.context.WorkflowContext.ItemsCurrent === undefined) {
            throw new Error("Item data not defined in the workflow context");
        } else {
            isHeader = true;
            item = $.context.WorkflowContext.ItemsCurrent[0];
        }
    } else {
        item = $.context.WorkflowContext.LineItem;
    }


if (isHeader) {
    context = {
        BusinessKey: $.context.WorkflowContext.BusinessKey,
        ItemsCurrent: $.context.WorkflowContext.ItemsCurrent,
        DocumentId: $.context.WorkflowContext.DocumentId,
        DocumentType: $.context.WorkflowContext.DocumentType,
        PurchasingOrg: $.context.WorkflowContext.PurchasingOrg,
        RequisitionDate: $.context.WorkflowContext.RequisitionDate,
        Requestor: $.context.WorkflowContext.Requestor,
        PRDeliveryDate: $.context.WorkflowContext.PRDeliveryDate,
        NetAmount: $.context.WorkflowContext.NetAmount,
        AllComments: [],
        RequestDetails: {
            AccountAssignment: $.context.WorkflowContext.AccountAssignment,
            workflowTerminated: false,
            WFBackendConfig: $.context.WorkflowContext.WFBackendConfig,
        }
    };
} else {
    context = {
        BusinessKey: $.context.WorkflowContext.BusinessKey,
        LineItem: item,
        NetAmount: $.context.WorkflowContext.NetAmount,
        Requestor: $.context.WorkflowContext.Requestor,
        DocumentId: $.context.WorkflowContext.DocumentId,
        ApprovalSteps: [],
        ConfirmationMessage: {},
        RequestDetails: {
            AccountAssignment: $.context.WorkflowContext.AccountAssignment,
            workflowTerminated: false,
            WFBackendConfig: $.context.WorkflowContext.WFBackendConfig
        }
    };
}


var startWorkflowContext = {
    definitionId: $.context.WorkflowInstanceId.definitionId,
    context: context
};

$.context.NewWorkflowContext = startWorkflowContext;

var workflowCancelData = {
    "status": "CANCELED"
};
$.context.WorkflowCancelRequest = workflowCancelData;