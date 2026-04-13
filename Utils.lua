-- Utils.lua

local Utils = {}

-- URL Decoding
function Utils.urlDecode(str)
    return str:gsub('%%(%x%x)', function(hex)
        return string.char(tonumber(hex, 16))
    end)
end

-- Path Matching
function Utils.pathMatch(pattern, path)
    return string.match(path, pattern) ~= nil
end

-- Debug Printing
function Utils.debugPrint(message)
    print(os.date('%Y-%m-%d %H:%M:%S') .. ' - DEBUG: ' .. message)
end

return Utils
