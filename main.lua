require "CiderDebugger";

local widget = require "widget"

local showScreen1 = function (event )
        if event.phase == "release" then
            transition.to(screen1, {time=400, x=display.contentWidth*-1, alpha=0 })
            transition.to(screen2, {time=400, x=0, alpha=1 })
        end
    end   
local button1 = widget.newButton{
    label = "To Screen 2",
    font = "HelveticaNeue-Bold",
    fontSize = 16,
    onRelease = showScreen1,
    defaultX = display.contentCenterX,
    defaultY = display.contentCenterY,
}
button1.x = display.contentCenterX
button1.y = display.contentCenterY


local showScreen2 = function (event )
        if event.phase == "release" then
            transition.to(screen2, {time=400, x=display.contentWidth-1, alpha=0 })
            transition.to(screen1, {time=400, x=0, alpha=1 })
        end
    end
local button2 = widget.newButton{
    label = "To Screen 1",
    font = "HelveticaNeue-Bold",
    fontSize = 16,
    onRelease = showScreen2,
    defaultX = display.contentCenterX,
    defaultY = display.contentCenterY,
}
button2.x = display.contentCenterX
button2.y = display.contentCenterY

screen1 = display.newGroup()
screen2 = display.newGroup()
screen2.x = display.contentWidth-1
screen2.alpha = 0

local bg1 = display.newRect(0,0,display.contentWidth,display.contentHeight-display.screenOriginY)
bg1:setFillColor(255,0,0)
local bg2 = display.newRect(0,0,display.contentWidth,display.contentHeight-display.screenOriginY)
bg2:setFillColor(0,255,0)

screen1:insert(bg1)
screen1:insert(button1)
screen2:insert(bg2)
screen2:insert(button2)


