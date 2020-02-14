import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["flipContainer"];

  showIngredientsForm() {
    this.flipContainerTarget.classList.toggle("is-flipped");
  }
}
