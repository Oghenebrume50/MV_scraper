class Login
  attr_reader :email, :password
  
  def initialize(user)
    @email = user[:email]
    @password = user[:pass]
    $browser = Watir::Browser.new :chrome, headless: true

    $browser.goto 'https://dashboard.microverse.org/login'
  end

  def auth
    form = $browser.form(class: 'auth0-lock-widget')
    form.text_field(name: 'email').set(email)
    form.text_field(name: 'password').set(password)
    form.button(text: 'Log In').click

    sleep(2)
  end
end