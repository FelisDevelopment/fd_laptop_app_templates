RegisterCommand('testMessageVue', function()
    exports.fd_laptop:sendAppMessage('fd_laptop_vue_template', {
        action = "test",
        data = {
            test = "test"
        }
    })
end, false)
