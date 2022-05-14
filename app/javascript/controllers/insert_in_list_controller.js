import { Controller } from "@hotwired/stimulus"
import { csrfToken } from "@rails/ujs"


export default class extends Controller {
  static targets = ["items", "form", 'paragraph']

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      if (data.inserted_item) {
        if (this.hasParagraphTarget) {
          this.paragraphTarget.remove()
        }
        this.itemsTarget.insertAdjacentHTML("afterbegin", data.inserted_item)
      }
      this.formTarget.outerHTML = data.form
    })
  }
}
