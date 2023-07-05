import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="question-card"
export default class extends Controller {
  static targets = ["contents"]

  connect() {
    this.updateContentVisibility();
  }

  hideContent() {
    this.updateContentVisibility();
  }

  updateContentVisibility() {
    if (this.checkbox.checked) {
      this.contentsTarget.classList.add("d-none");
      this.contentsTarget.classList.remove("d-flex");
    } else {
      this.contentsTarget.classList.remove("d-none");
      this.contentsTarget.classList.add("d-flex");
    }
  }

  get checkbox() {
    return this.element.querySelector('input[type="checkbox"]');
  }
}
