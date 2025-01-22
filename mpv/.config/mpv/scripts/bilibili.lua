-- 检测是否为 B 站视频
function is_bilibili()
    local path = mp.get_property("path")
    return path and (path:find("bilibili.com") ~= nil or path:find("b23.tv") ~=nil)
end

-- 应用 B 站特定设置
function apply_bilibili_settings()
    mp.set_property("vf", "lavfi=[fps=fps=60:round=down]")
end

-- 在文件加载时检查并应用设置
mp.register_event("file-loaded", function()
    if is_bilibili() then
        apply_bilibili_settings()
    end
end)
