import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["count"]

  post(event) {
    event.preventDefault();
    event.stopPropagation();

    const link = event.currentTarget;

    fetch(link.href, {
      method: "put"
    }).then(response => response.json())
      .then(data => {
        if (data.status === 'unliked') {
          event.target.classList.remove('liked')
        } else {
          event.target.classList.add('liked')
        }
        this.countTarget.innerText = data.count;
  });
}
}

