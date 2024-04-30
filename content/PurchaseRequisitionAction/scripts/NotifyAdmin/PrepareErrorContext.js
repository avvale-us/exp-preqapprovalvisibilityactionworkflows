var allErrors = $.context.WorkflowErrors;
var errors = [];
var errorsText = '';

(Array.isArray(allErrors)) ? (errors = allErrors) : (errors.push(allErrors));
var i = 0;
for (i = 0; i < errors.length; i++) {
	errorsText += errors[i].timestamp + " " + errors[i].message
}

$.context.ErrorList = errorsText;