package;

import openfl.display.Sprite;

class Ball extends Sprite {

    private function new() {

        // uses Sprite constructor
        super();
        // draw circle for ball
        this.graphics.beginFill(0xffffff);
        this.graphics.drawCircle(0, 0, 15);
        this.graphics.endFill();

    }

}