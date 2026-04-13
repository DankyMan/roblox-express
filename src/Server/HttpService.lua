local HttpService = game:GetService("HttpService")

local HttpModule = {}

function HttpModule:Get(url)
    local response = HttpService:GetAsync(url)
    return HttpService:JSONDecode(response)
end

function HttpModule:Post(url, data)
    local response = HttpService:PostAsync(url, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
    return HttpService:JSONDecode(response)
end

return HttpModule