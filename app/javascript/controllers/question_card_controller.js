import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="question-card"
export default class extends Controller {
  static targets = ["contents"]

  hideContent() {
    this.contentsTarget.classList.toggle("d-none")
    this.contentsTarget.classList.toggle("d-flex")
  }
}
