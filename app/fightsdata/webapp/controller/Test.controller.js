sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("com.flights.fightsdata.controller.Test", {
        onInit() {
        },

        formatStatusColor(sStatus) {
            switch (sStatus) {
                case "Departed":
                    return "Success";     // ✅ allowed
                case "Cancelled":
                    return "Error";       // ✅ allowed
                case "Delay":
                    return "Warning";     // ✅ allowed
                case "On Time":
                    return "Success";     // ✅ allowed
                default:
                    return "None";
            }

        }
    });
});