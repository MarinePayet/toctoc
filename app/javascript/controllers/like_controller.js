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
        this.countTarget.innerText = data.count;
  });
}
}
