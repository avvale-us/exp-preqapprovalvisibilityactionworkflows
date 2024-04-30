var confirmationMessage = {
  "context": {
      "itemId" : String($.context.WorkflowContext.LineItem.PREQ_ITEM),
      "description": "Approval workflow cancelled"
  },
  "definitionId": "ConfirmLineItemApproval",
  "workflowDefinitionId": "InitializePurchaseRequisitionApprovalProcess",
  "businessKey": String($.context.WorkflowContext.LineItem.PREQ_NO)
};

$.context.ConfirmationMessage = confirmationMessage;