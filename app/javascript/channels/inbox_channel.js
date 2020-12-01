import consumer from "./consumer";

const initInboxCable = () => {

  const alert = document.querySelector('.alert-notification')
  if (alert) {

    const id = alert.dataset.userId;
    const count = document.querySelector("#notif_count")

    consumer.subscriptions.create({ channel: "InboxChannel", id: id }, {
      received(data) {
        document.querySelector('#notif_icon').classList.add("active")
        if (count.innerText === "") {
          count.innerText = '1'
        } else {
          count.innerText = parseInt(count.innerText, 10) + 1
        }

        alert.querySelector('#message').innerHTML = data
      },
    });
  }
}

export { initInboxCable };
