package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import ui.FlxVirtualPad;

/**
 * ...
 * @author Silvio
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

		if(FlxG.save.data.menuzin){FlxG.switchState(new TitleState());}
		
		for (touch in FlxG.touches.list)
		{
			if (touch.justPressed)
				FlxG.sound.play(Paths.sound('confirmMenu'));
				FlxG.save.data.flashing = true;
				FlxG.save.data.menuzin = false;
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