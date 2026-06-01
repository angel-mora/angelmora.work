import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle() {
    const html = document.documentElement
    const other = html.classList.contains("dark") ? "light" : "dark"

    if (other === "dark") {
      html.classList.add("dark")
      localStorage.theme = "dark"
    } else {
      html.classList.remove("dark")
      localStorage.theme = "light"
    }
  }
}