var confirmationMessage = {
  "context": {
      "itemId" : String($.context.WorkflowContext.LineItem.PREQ_ITEM),
      "description": "Purchase Requistion Line Item released through Visibility Action"
  },
  "definitionId": "ConfirmLineItemApproval",
  "workflowDefinitionId": "InitializePurchaseRequisitionApprovalProcess",
  "businessKey": String($.context.WorkflowContext.LineItem.PREQ_NO)
};

$.context.ConfirmationMessage = confirmationMessage;