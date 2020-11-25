
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

flatpickr(".datepicker", {
  enableTime: true
});

// flatpickr({
//  mode: "range",
//     minDate: "today",
//     dateFormat: "Y-m-d",
//     disable: [
//         function(date) {
//             // disable every multiple of 8
//             return !(date.getDate() % 8);
//         }
//     ]
// });
