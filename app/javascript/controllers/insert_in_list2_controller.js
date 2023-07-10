import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "form", "searchInput", "list"]

  connect() {
    console.log("I am inserting list 2 controller")
    this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")
      }

  send(event) {
    event.preventDefault()
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    console.log(url)
    fetch(url, {
      method: "GET",
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
        if (data.inserted_item) {
          this.itemsTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.listTarget.outerHTML = data;
      })
  }
}
