// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const checkBox = document.getElementById('public')
const form = document.getElementById("toggle_privacy_form");

checkBox.addEventListener('change', (e) => {
  if (e.target.checked == true) {
    e.preventDefault()
    form.submit()
  } else if (checkBox.checked == false) {
    e.preventDefault()
    const input = document.createElement("input");
    input.setAttribute("type", "hidden");
    input.setAttribute("name", "public");
    input.setAttribute("value", "false");
    form.appendChild(input);
    form.submit();
  }
})
