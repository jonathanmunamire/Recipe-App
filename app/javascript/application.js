// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

const checkBox = document.getElementById('public_recipe')
const form = document.getElementById("toggle_privacy_form");

// console.log(checkBox.checked)
checkBox.addEventListener('change', (e) => {
  if (e.target.checked == true) {
    form.submit()
  } else if (checkBox.checked == false) {
    form.submit()
  }
})
