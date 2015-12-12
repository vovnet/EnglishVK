package  
{
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.*;
	import flash.display.*;
	import com.greensock.*;
	import com.greensock.easing.*;
	/**
	 * ...
	 * @author Vladimir
	 */
	public class WordButton extends Sprite 
	{
		private var text:TextField = new TextField();
		private var btn:gr_word_btn = new gr_word_btn();
		public var word:String;
		private var posX:Number;
		private var posY:Number;
		private var init:Boolean = false;
		
		public function WordButton(str:String) 
		{
			word = str;
			
			var bgRed:Shape = new Shape()
			bgRed.graphics.beginFill( 0x1a3950 );
			bgRed.graphics.drawRoundRect(0, 0, 150, 80, 15, 15);
			bgRed.graphics.endFill();
			
			var bgBlack:Shape = new Shape()
			bgBlack.graphics.beginFill( 0x80b01c );
			bgBlack.graphics.drawRoundRect(0, 0, 150, 80, 15, 15);
			bgBlack.graphics.endFill();
			
			var tf:TextFormat = new TextFormat();
			tf.color = 0xFFFFFF;
			tf.font = "Verdana";
			tf.size = 32 - word.length;
			tf.align = "center";
			
			var txt:TextField = new TextField();
			txt.text = word;
			txt.x = 0;
			txt.y = 15;
			txt.multiline = true;
			txt.wordWrap = true;
			txt.width = bgRed.width;
			txt.height = bgRed.height - 15;
			txt.setTextFormat( tf );
			
			var mc:Sprite = new Sprite();
			mc.addChild( bgRed );
			mc.addChild( txt );
			
			var mc2:Sprite = new Sprite();
			mc2.addChild(bgBlack);
			var txt2:TextField = new TextField();
			txt2.text = word;
			txt2.y = 15;
			txt2.multiline = true;
			txt2.wordWrap = true;
			txt2.width = bgRed.width;
			txt2.height = bgRed.height - 15;
			txt2.setTextFormat(tf);
			mc2.addChild(txt2);
			
			var btn:SimpleButton = new SimpleButton();
			btn.upState = mc;
			btn.overState = mc2;
			btn.downState = btn.overState;
			btn.hitTestState = btn.overState;
			
			addChild( btn );
			
			//addEventListener(MouseEvent.MOUSE_OVER, OnOverHandler);
			//addEventListener(MouseEvent.MOUSE_OUT, OnOutHandler);
		}
		
		private function OnOutHandler(e:MouseEvent):void 
		{
			TweenLite.to(this, 2, {x:posX, y:posY, scaleX:1, scaleY:1, ease:Elastic.easeOut});
		}
		
		private function OnOverHandler(e:MouseEvent):void 
		{
			if (!init)
			{
				init = true;
				posX = this.x;
				posY = this.y;
			}
			TweenLite.to(this, 2, {x:posX-6, y:posY-3, scaleX:1.06, scaleY:1.06, ease:Elastic.easeOut});
		}
		
	}

}