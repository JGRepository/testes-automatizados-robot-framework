*** Variables ***
${loginScreenShoot}    results\Login\loginScreenShoots
&{LOGIN}
...    inpUsername=//*[@name="user-name"]
...    inpPassword=//*[@name="password"]
...    btnLoging=//*[@id="login-button"]
...    errorText=//*[@id="login_button_container"]/div/form/h3
...    usernameValid=standard_user
...    usernameProblem=problem_user
...    userLock=locked_out_user
...    password=secret_sauce
...    error=error



&{LOGIN_VALIDATIONS}
...    errorUsername=Epic sadface: Username is required
...    errorPassword=Epic sadface: Password is required
...    loginError=Epic sadface: Username and password do not match any user in this service
...    loginLock=Epic sadface: Sorry, this user has been locked out.