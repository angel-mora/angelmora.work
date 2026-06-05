import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay", "panel", "recruiterTab", "consultingTab", "recruiterBody", "consultingBody", "context"]

  connect() {
    this.handleKeydown = this.handleKeydown.bind(this)
    document.addEventListener("keydown", this.handleKeydown)
  }

  disconnect() {
    document.removeEventListener("keydown", this.handleKeydown)
  }

  open(event) {
    event?.preventDefault()
    const type = event?.params?.type || "recruiter"
    this.selectType(type)
    this.overlayTarget.classList.remove("hidden")
    this.panelTarget.classList.remove("hidden")
    document.body.style.overflow = "hidden"
  }

  close() {
    if (!this.hasOverlayTarget || !this.hasPanelTarget) return

    this.overlayTarget.classList.add("hidden")
    this.panelTarget.classList.add("hidden")
    document.body.style.overflow = ""
  }

  select(event) {
    this.selectType(event.params.type || "recruiter")
  }

  selectType(type) {
    if (!this.hasRecruiterTabTarget) return

    const recruiter = type === "recruiter"
    this.recruiterTabTarget.classList.toggle("active", recruiter)
    this.consultingTabTarget.classList.toggle("active", !recruiter)
    this.recruiterBodyTarget.classList.toggle("hidden", !recruiter)
    this.consultingBodyTarget.classList.toggle("hidden", recruiter)
    this.contextTarget.classList.remove("hidden")
  }

  handleKeydown(event) {
    if (event.key === "Escape") this.close()
  }
}
