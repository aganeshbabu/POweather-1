function _getContext() {
    var errorMessage = "Context is not available.";
    if (typeof GetGlobalContext != "undefined") { return GetGlobalContext(); }
    else {
        if (typeof Xrm != "undefined") {
            return Xrm.Page.context;
        }
        else { throw new Error(errorMessage); }
    }
}