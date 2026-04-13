local HttpService = game:GetService('HttpService')

local function pathRegexp(path)
    -- Implement path regular expression logic here
end

local function getPathname(url)
    return url:match('^.+/(.+)')
end

local function debugPrint(message)
    print('[DEBUG] ' .. message)
end

local function urldecode(encoded)
    return HttpService:UrlDecode(encoded)
end

local function isAbsolute(path)
    return path:sub(1, 1) == '/'  -- Assuming absolute paths start with '/'
end

local function string_split(inputstr, sep)
    if sep == nil then sep = '%s' end
    local t = {}  -- Create an empty table to hold the results
    for str in string.gmatch(inputstr, '([^' .. sep .. ']+)') do
        table.insert(t, str)  -- Insert each found string into the table
    end
    return t
end

return {
    pathRegexp = pathRegexp,
    getPathname = getPathname,
    debugPrint = debugPrint,
    urldecode = urldecode,
    isAbsolute = isAbsolute,
    string_split = string_split,
}