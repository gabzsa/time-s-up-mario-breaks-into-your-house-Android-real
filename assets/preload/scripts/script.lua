
Timer = 11.8 --How long the black screen lasts in seconds


function onStartCountdown()

	makeLuaSprite('BlackScreen', '', 0, 0)
	makeGraphic('BlackScreen', screenWidth, screenHeight, '000000')
	setObjectCamera('BlackScreen', 'HUD')
	addLuaSprite('BlackScreen')

	setProperty('healthBar.visible',false)
	setProperty('healthBarBG.visible',false)
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
	setProperty('scoreTxt.visible',false)
	setProperty('timeBar.visible',false)
	setProperty('timeBarBG.visible',false)
	setProperty('timeTxt.visible',false)

	runTimer('BlackScreenEnd', Timer, 1)

	return Function_Continue;

end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'BlackScreenEnd' then

		removeLuaSprite('BlackScreen')

		setProperty('healthBar.visible',true)
		setProperty('healthBarBG.visible',true)
		setProperty('iconP1.visible',true)
		setProperty('iconP2.visible',true)
		setProperty('scoreTxt.visible',true)
		setProperty('timeBar.visible',true)
		setProperty('timeBarBG.visible',true)
		setProperty('timeTxt.visible',true)

	end
end
