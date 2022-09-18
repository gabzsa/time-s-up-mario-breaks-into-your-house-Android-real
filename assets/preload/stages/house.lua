function onCreate()
	-- background shit
	makeLuaSprite('thehouse', 'housebg', -650, -100);
	setScrollFactor('thehouse', 1, 1);
	

	addLuaSprite('thehouse', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end