

if ($.context.WFBackendConfig == "RS" &&  $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.REL_STATUS_NEW != "X") {
    $.context.bapiCallErrors = true;
    $.context.AllErrorsText = "Error code: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.CODE + "  Error text: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.MESSAGE;
    var releaseErrors = {
        errorCode : $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.CODE,
        errorText : $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.MESSAGE
    }
    $.context.ReleaseErrors = releaseErrors;
} else {
    if ($.context.WFBackendConfig == "RB" &&  $.context.RequisitionBapiChangeData.Response.BAPI_REQUISITION_CHANGE_RESPONSE.RETURN.Item.TYPE == "E") {
        $.context.bapiCallErrors = true;
        $.context.AllErrorsText = "Error code: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.CODE + "  Error text: " + $.context.RequisitionBapiReleaseData.Response.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.item.MESSAGE;
        var releaseErrors = {
            errorCode : $.context.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.Item.CODE,
            errorText : $.context.BAPI_REQUISITION_RELEASE_RESPONSE.RETURN.Item.MESSAGE
        }
        $.context.ReleaseErrors = releaseErrors;
    } else {
        $.context.bapiCallErrors = false;
    }
}