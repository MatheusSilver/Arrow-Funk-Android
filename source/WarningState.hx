package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import ui.FlxVirtualPad;
import flixel.util.FlxTimer;


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
        warning.alpha = 0;
        warning.screenCenter();
        add(warning);

        new FlxTimer().start(2, function(xd:FlxTimer)
        {
            FlxTween.tween(warning, {alpha: 1}, 1);
        });
	}
	public override function update(elapsed){
		
		for (touch in FlxG.touches.list)
		{
			FlxG.sound.play(Paths.sound('confirmMenu'));
			if (touch.justPressed)
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