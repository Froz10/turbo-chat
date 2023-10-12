import { Controller } from "@hotwired/stimulus"
import { toggle } from 'el-transition'

// Connects to data-controller="chat"
export default class extends Controller {
  static targets = ['openUserChat'];

  connect() {
    this.openUserChatTarget.addEventListener('click', this.toggleDropdownMenu)
  }

  toggleDropdownMenu() {
    toggle(document.getElementById('sidebar-dropdown-items'));
  }
}
