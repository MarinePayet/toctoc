import consumer from "./consumer";

const initInboxCable = () => {

  const alert = document.querySelector('.alert-notification');
  const messagesContainer = document.getElementById('messages-container');
  console.log(messagesContainer);
  if (alert) {

    const id = alert.dataset.userId;
    const count = document.querySelector("#notif_count")

    consumer.subscriptions.create({ channel: "InboxChannel", id: id }, {
      received(data) {
        document.querySelector('#notif_icon').classList.add("active")
        count.classList.add('active')
        if (count.innerText === "") {
          count.innerText = '1'
        } else {
          count.innerText = parseInt(count.innerText, 10) + 1
        }
        console.log(data.message);
        // alert.querySelector('#message').innerHTML = data
        // messagesContainer.innerHTML =  data;
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initInboxCable };
