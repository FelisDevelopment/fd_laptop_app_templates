RegisterCommand('testMessageReact', function()
    exports.fd_laptop:sendAppMessage('fd_laptop_react_template', {
        action = "testingMessage",
        data = {
            test = "test"
        }
    })
end, false)
