-- RobloxExpress.lua

local Express = require("Express")

local function initExpressApp()
    local app = Express.new()

    -- Initialize your routes and middleware here

    return app
end

return { initExpressApp = initExpressApp }