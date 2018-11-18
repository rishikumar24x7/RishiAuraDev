({
	fireSaveEvent : function(component, event, helper) {
        debugger;
        var updateEvent = $A.get("e.c:SaveEvent");
      	updateEvent.setParams({ "data": "Save" }).fire();
	}
})