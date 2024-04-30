var allErrors = $.context.AllErrorsText;

if ($.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.TYPE == "E") {
    allErrors += "Error code: " + $.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.CODE + "Error text: " + $.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.item.MESSAGE + "           ";

    $.context.AllErrorsText = allErrors;
    $.context.bapiUpdateCallErrors = true;
    $.context.allErrors = true;
} else {
    $.context.bapiUpdateCallErrors = false;
}