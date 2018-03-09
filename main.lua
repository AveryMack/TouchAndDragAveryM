-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program displays images that can be dragged around on the screen.
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local blueGirl = display.newImageRect("Images/girl5.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height


local cat = display.newImageRect("Images/girl4.png", 150, 150)
local catWidth = cat.width
local catHeight = cat.height

-- my boolean variables to keep track of which object i touched first
local alreadyTouchedcat = false
local alreadyTouchedblueGirl = false

-- set the initial x and y position of myImage
cat.x = 400
cat.y = 500

blueGirl.x = 300
blueGirl.y = 200

-- Function: Cat
-- Input: touch listener
-- Output: none
-- Description: when cat is touched, move her 
local function catListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedblueGirl == false) then
			alreadyTouchedcat = true
		end
	end

	if ( (touch.phase == "moved" ) and (alreadyTouchedcat == true) ) then 
	   cat.x = touch.x
	   cat.y = touch.y
	end

	if (touch.phase == "ended") then 
		alreadyTouchedcat = false
		alreadyTouchedblueGirl = false
	end
end

-- add the respective listeners to each object
cat:addEventListener("touch", catListener)

-- Function: BlueGirl
-- Input: touch listener
-- Output: none
-- Description: when blueGirl is touched, move her 
local function blueGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedcat == true) then
			alreadyTouchedblueGirl = false
		end
	end

	if ( (touch.phase == "moved" ) and (alreadyTouchedblueGirl == false) ) then 
	   blueGirl.x = touch.x
	   blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
		alreadyTouchedblueGirl = false
		alreadyTouchedcat = false
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", blueGirlListener)
