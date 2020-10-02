package;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;

class Main extends Sprite {

	// initiate vars for sprites
	private var platform1:Platform;
	private var platform2:Platform;
	private var ball:Ball;

	var inited:Bool;

	/* ENTRY POINT */

	function resize(e){

		if (!inited) init();
		// else (resize or orientation change)
	
	}

	function init(){

		if (inited) return;
		inited = true;

		// draw platform1 [left]
		platform1 = new Platform();
		platform1.x = 5;
		platform1.y = 200;
		this.addChild(platform1);

		// draw platfrom2 [right]
		platform2 = new Platform();
		platform2.x = 480;
		platform2.y = 200;
		this.addChild(platform2);
		
		// draw ball [center]
		ball = new Ball();
		ball.x = 250;
		ball.y = 250;
		this.addChild(ball);

	}

	/* SETUP */

	public function new(){

		super();
		addEventListener(Event.ADDED_TO_STAGE, added);

	}

	function added(e){

		removeEventListener(Event.ADDED_TO_STAGE, added);
		stage.addEventListener(Event.RESIZE, resize);

		#if ios
		haxe.Timer.delay(init, 100); // iOS 6
		#else
		init();
		#end

	}

	public static function main(){

		// static entry point
		Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
		Lib.current.addChild(new Main());
		//
	}
}
