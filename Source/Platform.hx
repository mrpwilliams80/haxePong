package;

import openfl.display.Sprite;

class Platform extends Sprite {

    public function new (){

        // uses Sprite constructor
        super();
        // draw platfrom rectange
        this.graphics.beginFill(0xffffff);
        this.graphics.drawRect(0, 0, 15, 100);
        this.graphics.endFill();

    }

}