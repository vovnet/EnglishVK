package  
{
	import flash.display.Shape;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class LessonButton extends Sprite 
	{
		private var title:String;
		private var text:String;
		
		public function LessonButton(_title:String, _text:String) 
		{
			title = _title;
			text = _text;
			
			var bgRed:Shape = new Shape()
			bgRed.graphics.beginFill( 0x1a3950 );
			bgRed.graphics.drawRoundRect(0, 0, 150, 120, 15, 15);
			bgRed.graphics.endFill();
			
			var bgBlack:Shape = new Shape()
			bgBlack.graphics.beginFill( 0x80b01c );
			bgBlack.graphics.drawRoundRect(0, 0, 150, 120, 15, 15);
			bgBlack.graphics.endFill();
			
			var tf_title:TextFormat = new TextFormat();
			tf_title.color = 0xFFFFFF;
			tf_title.font = "Verdana";
			tf_title.size = 20;
			tf_title.align = "center";
			
			var title_1:TextField = new TextField();
			title_1.text = title;
			title_1.x = 15;
			title_1.y = 10;
			title_1.width = 120;
			title_1.height = 30;
			title_1.setTextFormat(tf_title);
			
			var tf2:TextFormat = new TextFormat();
			tf2.color = 0xFFFFFF;
			tf2.font = "Verdana";
			tf2.size = 12;
			tf2.align = "center";
			
			var desc_1:TextField = new TextField();
			desc_1.multiline = true;
			desc_1.wordWrap = true;
			desc_1.text = text;
			desc_1.x = 10;
			desc_1.y = 40;
			desc_1.width = 130;
			desc_1.height = 80;
			desc_1.setTextFormat(tf2);
			
			var mc:Sprite = new Sprite();
			mc.addChild( bgRed );
			mc.addChild(title_1);
			mc.addChild(desc_1);
			
			var mc2:Sprite = new Sprite();
			mc2.addChild(bgBlack);
			var title_2:TextField = new TextField();
			title_2.text = title;
			title_2.x = 15;
			title_2.y = 10;
			title_2.width = 120;
			title_2.height = 30;
			title_2.setTextFormat(tf_title);
			mc2.addChild(title_2);
			
			var desc_2:TextField = new TextField();
			desc_2.multiline = true;
			desc_2.wordWrap = true;
			desc_2.text = text;
			desc_2.x = 10;
			desc_2.y = 40;
			desc_2.width = 130;
			desc_2.height = 80;
			desc_2.setTextFormat(tf2);
			mc2.addChild(desc_2);
			
			var btn:SimpleButton = new SimpleButton();
			btn.upState = mc;
			btn.overState = mc2;
			btn.downState = btn.overState;
			btn.hitTestState = btn.overState;
			
			addChild( btn );
		}
		
	}

}