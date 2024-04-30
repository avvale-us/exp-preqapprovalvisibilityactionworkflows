
if ($.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.TYPE == "E") {
    $.context.AllErrorsText = "Error code: " + $.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.CODE + "  Error text: " + $.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.MESSAGE;

    $.context.bapiCallErrors = true;
    $.context.allErrors = true;
} else {
    $.context.bapiCallErrors = false;
    $.context.bapiUpdateCallErrors = false;
}