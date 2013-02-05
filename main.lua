require "CiderDebugger";-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local widget = require "widget"

local button = widget.newButton{
    label = "The Button",
    font = "HelveticaNeue-Bold",
    fontSize = 16
}
button.x = display.contentCenterX
button.y = display.contentCenterY

local onClick = function (event )
        if event.phase == "release" then
            
        end
    end

