*** Variables ***
${username}    standard_user
${password}    secret_sauce

&{LOGIN}
...    inpUsername=//*[@name="user-name"]
...    inpPassword=//*[@name="password"]
...    btnLoging=//*[@id="login-button"]
...    errorText=//*[@id="login_button_container"]/div/form/h3



&{LOGIN_VALIDATIONS}
...    error1=Epic sadface: Username is required