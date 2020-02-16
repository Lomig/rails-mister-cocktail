import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["flipContainer"];

  connect() {
    if (document.querySelector(".form-group-invalid"))
      this.showIngredientsForm();
  }

  showIngredientsForm() {
    this.flipContainerTarget.classList.toggle("is-flipped");
  }
}
