import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-all-forms"
export default class extends Controller {
  static targets = ["button", "form"]

  connect() {
    console.log("i am connected to the submit all forms controller")
    console.log("my form", this.formTarget )
    console.log("my button", this.buttonTarget )
    // this.csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute("content")
  }

  // send(event) {
  //   event.preventDefault()
  //   console.log(event)
  //   const url = this.formTarget.action
  //   // console.log(this.formTarget.action)
  //   const options = {
  //     method: "PATCH",
  //     // could be POST
  //     headers: { "Accept": "application/json", "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').getAttribute("content")},
  //     body: new FormData(this.formTarget)
  //   }
  //   fetch(url, options)
  //   .then(response => response.json())
  //   .then((data) => {
  //     console.log(data)
  //   })
  // }

  click(event) {
    event.preventDefault()
    console.log("yayyyyyyy!", event)
  }
}
