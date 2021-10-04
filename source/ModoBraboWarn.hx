package;

import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.util.FlxColor;

class ModoBraboWarn extends MusicBeatState
{

    var image:FlxSprite;


    public function new(isUnlocked:Bool, whichUnlocked:String)
    {
        if (whichUnlocked == 'soundtest')
        {
            if (isUnlocked)
            {
                image = new FlxSprite().loadGraphic(Paths.image('trem'));
                FlxG.save.data.soundTestUnlocked = true;
            }
        }
        super();
    }

    override function create()
    {
        image.alpha = 0;
        image.screenCenter();
        add(image);

        new FlxTimer().start(2, function(xd:FlxTimer)
        {
            FlxTween.tween(image, {alpha: 1}, 1);
        });
        
		#if mobileC
		addVirtualPad(NONE, A_B);
		#end

        super.create();
    }

    override function update(elapsed:Float)
    {
        if (controls.ACCEPT)
        {
            FlxG.save.data.newInput = true;
            FlxG.sound.play(Paths.sound('confirmMenu'));
			LoadingState.loadAndSwitchState(new PlayState(), true);
        }

        if (controls.BACK)
            {
                LoadingState.loadAndSwitchState(new MainMenuState(), true);
            }
        
        super.update(elapsed);
    }
}