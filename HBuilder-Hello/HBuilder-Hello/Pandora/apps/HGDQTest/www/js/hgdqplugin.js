document.addEventListener("plusready", function() {
	var _BARCODE = 'HGDQPlugin',
		B = window.plus.bridge;
	var HGDQPlugin = {
		hgdqGotoNative: function(params, successCallback, errorCallback) {
		var success = typeof successCallback !== 'function' ? null : function(args) {
				successCallback(args);
			},
			fail = typeof errorCallback !== 'function' ? null : function(code) {
				errorCallback(code);
			};
            callbackID = B.callbackId(success, fail);
            //通知执行异步方法
            return B.exec(_BARCODE, "hgdqGotoNative", [callbackID, params]);               
		}
	};
	window.plus.HGDQPlugin = HGDQPlugin;
}, true);
