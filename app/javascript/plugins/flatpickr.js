
import flatpickr from "flatpickr";


const flatpickrCalendar = () => {
  flatpickr(".datepicker", {
    minDate: Date.now(),
    minDate: "today",
    dateFormat: "d-m-Y",
    inline: true,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  });
}

export {flatpickrCalendar}
