pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin "application", preload: true
pin_all_from Challenge::Engine.root.join("app/assets/javascript/challenge/controllers"), under: "controllers", to: "challenge/controllers"
