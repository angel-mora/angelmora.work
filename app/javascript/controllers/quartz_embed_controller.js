import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["iframe", "status"]
  static values = { url: String }

  connect() {
    this.statusTarget.textContent = "Connected"
    this.iframeTarget.addEventListener("load", () => {
      this.statusTarget.textContent = "Connected"
    })
    this.iframeTarget.addEventListener("error", () => {
      this.statusTarget.textContent = "Quartz unavailable — check QUARTZ_URL"
    })
  }
}