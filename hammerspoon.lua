hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-- Top Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "1", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- Top Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "2", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- Bottom Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "3", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-- Bottom Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "4", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

--[[
detectMouseDown = hs.eventtap.new({ 
    hs.eventtap.event.types.otherMouseDown,
    hs.eventtap.event.types.leftMouseDown,
    hs.eventtap.event.types.rightMouseDown
  }, function(e)
    local button = e:getProperty(
        hs.eventtap.event.properties['mouseEventButtonNumber']
    )
    print(string.format("Clicked Mouse Button: %i", button))
end)
detectMouseDown:start()
]]

remapMiddle = hs.eventtap.new({
    hs.eventtap.event.types.middleMouseDown,
}, function(e)
    hs.eventtap.rightClick(hs.mouse.getAbsolutePosition(), 0)
end)
remapMiddle:start()
