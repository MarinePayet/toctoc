import consumer from "./consumer";

const initInboxCable = () => {

  const alert = document.querySelector('.alert-notification')
  if (alert) {

    const id = alert.dataset.userId;

    consumer.subscriptions.create({ channel: "InboxChannel", id: id }, {
      received(data) {
        alert.querySelector('#message').innerHTML = data
      },
    });
  }
}

export { initInboxCable };
