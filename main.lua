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

-- set the background image 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local catGirl = display.newImageRect("Images/girl4.png", 150, 150)
local catGirlWidth = catGirl.width
local catGirlHeight = catGirl.height


local starGirl = display.newImageRect("Images/girl5.png", 150, 150)
local starGirlWidth = starGirl.width
local starGirlHeight = starGirl.height

-- my boolean variables to keep track of which object i touched first
local alreadyTouchedStarGirl = false
local alreadyTouchedCatGirl = false

-- set the initial x and y position of myImage
starGirl.x = 400
starGirl.y = 500

catGirl.x = 300
catGirl.y = 200

-- Function: starGirl
-- Input: touch listener
-- Output: none
-- Description: when starGirl is touched, move her 
local function starGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedcatGirl == false) then
			alreadyTouchedstarGirl = true
		end
	end

	if ( (touch.phase == "moved" ) and (alreadyTouchedStarGirl == true) ) then 
	   starGirl.x = touch.x
	   starGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
		alreadyTouchedStarGirl = false
		alreadyTouchedCatGirl = false
	end
end

-- add the respective listeners to each object
starGirl:addEventListener("touch", starGirlListener)

-- Function: catGirl
-- Input: touch listener
-- Output: none
-- Description: when catGirl is touched, move her 
local function catGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedstarGirl == false) then
			alreadyTouchedcatGirl = true
		end
	end

	if ( (touch.phase == "moved" ) and (alreadyTouchedCatGirl == true) ) then 
	   catGirl.x = touch.x
	   catGirl.y = touch.y
	end

	if (touch.phase == "ended") then 
		alreadyTouchedCatGirl = false
		alreadyTouchedStarGirl = false
	end
end

-- add the respective listeners to each object
catGirl:addEventListener("touch", catGirlListener)




