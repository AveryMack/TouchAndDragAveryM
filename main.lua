-----------------------------------------------------------------------------------------
-- Title: TouchAndDrag
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program displays images that can be dragged around on the screen.
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- local variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local catGirl = display.newImageRect("Images/girl4.png", 150, 150)
local catGirlWidth = catGirl.width
local catGirlHeight = catGirl.height

local starGirl = display.newImageRect("Images/starGirl.png", 150, 150)
local starGirlWidth = starGirl.width
local starGirlHeight = starGirl.height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedCatGirl = false
local alreadyTouchedStarGirl = false 

-- set the initial x and y position of myImage
catGirl.x = 400
catGirl.y = 500

starGirl.x = 300
starGirl.y = 200

-- Function: BlueGirlListener
-- Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)

	if (touch.phase == "began") then 
		if (alreadyTouchedCatGirl == false) then
			alreadyTouchedStarGirl = true
		end 
	end

	if ( (touch.phase == "moved") and (alreadyTouchedStarGirl == true) ) then
		starGirl.x = touch.x
		starGirl.y = touch.y
	end

	if 








