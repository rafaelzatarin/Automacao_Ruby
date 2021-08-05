Quando("clicar no botão de login") do
    @home_page.btn_go_to_sign_in.click
end

Quando("será carregado a tela de autenticação") do
    puts @login_page.breadcrumb.text
    expect(@login_page.breadcrumb.text).to include 'Authentication'
end

Quando("entro com o usuário {string} e senha {string}") do |email, senha|
    @login_page.input_login_email.set(email)
    @login_page.input_login_password.set(senha)
    @login_page.btn_sign_in.click
end

Então("será carregado a tela da minha conta") do
    puts @login_page.breadcrumb.text
    expect(@login_page.breadcrumb.text).to include 'My account'
end

Então("será retornada a mensagem de email inválido") do
    puts @login_page.alert_message_authentication_failed.text
    expect(@login_page.alert_message_authentication_failed.text).to include'Invalid email address.'
end