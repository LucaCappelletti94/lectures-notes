function fileExists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function tableMerge(t1, t2)
    for k,v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                tableMerge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

--[[We define 5 levels of recursive attempts]]
levels = 5

--[[The expected file name is the following]]
target = 'metadata.json'

--[[The empty metadata table]]
metadata = {}
first = true

--[[We define 5 levels of recursive attempts]]
for i=levels,1,-1 do
    --[[Now we have a path that exists]]
    if fileExists(target) then
        --[[We load the file content]]
        local fileContent = io.open(target)
        --[[We save the content to a sting]]
        local fileStringContent = fileContent:read('*a')
        --[[Closes the file]]
        fileContent.close()
        --[[We save the content to a sting]]
        local fileJsonContent = utilities.json.tolua(fileStringContent)
        --[[We merge with the previous data]]
        if first then
            --[[If it is the first we assign]]
            first = false
            metadata = fileJsonContent
        else
            --[[Else we merge]]
            metadata = tableMerge(fileJsonContent, metadata)
        end
    end

    --[[We increase the path one level up]]
    target = '../'..target
end