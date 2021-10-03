package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import ui.FlxVirtualPad;

/**
 * ...
 * @author ...
 */
class WarningState extends FlxState
{
	var virtualpad:FlxVirtualPad;

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
		
		var warning:FlxSprite = new FlxSprite(0, 0);
		warning.loadGraphic("assets/images/Algo que roubei do Lucas Aventuras.png", false, 1280, 720);
		add(warning);
	}
	public override function update(elapsed){
		
		for (touch in FlxG.touches.list)
		{
			if (touch.justPressed)
				FlxG.save.data.flashing = true;
				FlxG.switchState(new TitleState());
			}

		var pressedEnter:Bool = FlxG.keys.justPressed.ENTER;

		if (pressedEnter){
			FlxG.save.data.flashing = false;
			FlxG.switchState(new TitleState());
		}
		super.update(elapsed);
	}
	
}