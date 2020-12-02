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
          event.target.classList.remove('fas')
          event.target.classList.add('far')
        } else {
          event.target.classList.remove('far')
          event.target.classList.add('fas')
        }
        this.countTarget.innerText = data.count;
  });
}
}

