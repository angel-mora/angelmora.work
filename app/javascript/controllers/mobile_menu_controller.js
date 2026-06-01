import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const overlay = document.getElementById("mobile-menu-overlay")
    const panel = document.getElementById("mobile-menu-panel")
    const menu = document.getElementById("mobile-menu")
    if (overlay) overlay.addEventListener("click", () => this.close())
    if (panel) panel.addEventListener("click", (e) => e.stopPropagation())
  }

  open() {
    document.getElementById("mobile-menu")?.classList.remove("hidden")
    document.body.style.overflow = "hidden"
  }

  close() {
    document.getElementById("mobile-menu")?.classList.add("hidden")
    document.body.style.overflow = ""
  }
}