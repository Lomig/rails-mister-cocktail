import { Controller } from "stimulus";
import $ from "jquery";
import "select2";

export default class extends Controller {
  static targets = ["input"];

  connect() {
    $(this.inputTarget).select2({ width: "100%" });
  }
}
