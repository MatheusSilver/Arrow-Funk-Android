package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('gf', [5, 6], 0, false, isPlayer);
		animation.add('gf-blue', [5, 6], 0, false, isPlayer);
		animation.add('kevin', [0, 1], 0, false, isPlayer);
		animation.add('bf', [2, 3, 4], 0, false, isPlayer);
		animation.add('bf-gold', [2, 3, 4], 0, false, isPlayer);
		animation.add('bf-virus', [2, 3, 2], 0, false, isPlayer);
		animation.add('spookykids', [10, 11, 12], 0, false, isPlayer);
		animation.add('spookykids-happy', [13, 13, 13], 0, false, isPlayer);
		animation.add('spookykids-virus', [13, 13, 11], 0, false, isPlayer);
		animation.add('bf-car', [2, 3, 4], 0, false, isPlayer);
		animation.add('bf-christmas', [2, 3, 4], 0, false, isPlayer);
		animation.add('bf-pixel', [2, 3, 4], 0, false, isPlayer);
		animation.add('spooky', [10, 11, 12], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [7, 8, 9], 0, false, isPlayer);
		animation.add('dad-fire', [7, 8, 9], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf-christmas', [5, 6], 0, false, isPlayer);
		animation.add('gf-pixel', [5, 6], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
