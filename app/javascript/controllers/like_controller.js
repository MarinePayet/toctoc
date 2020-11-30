import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["count"]

  post() {
    event.preventDefault();
    const link = event.currentTarget;
    fetch(link.href, {
      method: "put"
    }).then(response => response.json())
      .then(data => console.log(data))
  }
}
