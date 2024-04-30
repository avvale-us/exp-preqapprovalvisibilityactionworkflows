var allErrors = $.context.AllErrorsText;

if ($.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.REL_STATUS_NEW != "X") {
    allErrors += "Error code: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.CODE + "  Error text: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.MESSAGE + "           ";

    $.context.AllErrorsText = allErrors;
    $.context.bapiReleaseCallErrors = true;
    $.context.allErrors = true;
} else {
    $.context.bapiReleaseCallErrors = false;
}
