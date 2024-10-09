CreateThread(function()
    while GetResourceState("fd_laptop") ~= "started" do
        Wait(500)
    end

    local added, errorMessage = exports.fd_laptop:addCustomApp({
        id = "fd_laptop_vue_template",
        name = "Vue App Template",
        appstore = {
            description =
            "Some kind of very awesome description",
            author = "Felis Development",
            installTime = 8000,
            images = {
                "https://images.unsplash.com/photo-1719937206158-cad5e6775044?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "https://images.unsplash.com/photo-1720048169707-a32d6dfca0b3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "https://images.unsplash.com/photo-1727764673451-3d2494f9e409?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            }
        },
        needsUpdate = false,
        icon = ("https://cfx-nui-%s/web/dist/question.svg"):format(GetCurrentResourceName()),
        ui = ("https://cfx-nui-%s/web/dist/index.html"):format(GetCurrentResourceName()),
    })

    if not added then
        print("Could not add app:", errorMessage)
    end
end)
