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

<<<<<<< HEAD
-- local variables. I am still trying to get the x-value to be set properly
=======
-- display background image
>>>>>>> 50fcdbf63bddf3732f71503529b9744409c6c17c
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- local variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/16.png", 2048, 1536)
local catGirl = display.newImageRect("Images/girl4.png", 150, 150)
local catGirlWidth = catGirl.width
local catGirlHeight = catGirl.height

<<<<<<< HEAD
=======

>>>>>>> 50fcdbf63bddf3732f71503529b9744409c6c17c
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

-- Function: Octopus
-- Input: touch listener
-- Output: none
-- Description: when starGirl is touched, move her 
local function starGirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedCatGirl == false) then
			alreadyTouchedStarGirl = true
		end
	end

	if ( (touch.phase == "moved" ) and (alreadyTouchedStarGirl == true) ) then 
	   starGirl.x = touch.x
	   starGirl.y = touch.y
	end

<<<<<<< HEAD
	if (touch.phase == "ended") then
		alreadyTouchedStarGirl = false 
		alreadyTouchedCatGirl = false
	end
end

-- add the respective listeners to each object
starGirl:addEventListener("touch", StarGirlListener)










=======
	if (touch.phase == "ended") then 
		alreadyTouchedStarGirl = false
		alreadyTouchedCatGirl = false
	end
end
>>>>>>> 50fcdbf63bddf3732f71503529b9744409c6c17c

-- add the respective listeners to each object
starGirl:addEventListener("touch", starGirlListener)
