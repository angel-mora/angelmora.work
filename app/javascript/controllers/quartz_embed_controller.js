import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["iframe", "status"]
  static values = { url: String }

  connect() {
    const connectedLabel = this.element.dataset.quartzConnectedLabel || "Connected"
    const errorLabel = this.element.dataset.quartzErrorLabel || "Quartz unavailable - check QUARTZ_URL"

    this.statusTarget.textContent = connectedLabel
    this.iframeTarget.addEventListener("load", () => {
      this.statusTarget.textContent = connectedLabel
    })
    this.iframeTarget.addEventListener("error", () => {
      this.statusTarget.textContent = errorLabel
    })
  }
}
