package  
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class QuestionString extends Sprite 
	{
		private var txt:TextField;
		
		public function QuestionString(str:String = "") 
		{
			var image:gr_string_question = new gr_string_question();
			addChild(image);
			
			var tf:TextFormat = new TextFormat();
			tf.align = "center";
			//tf.color = 0xff0000;
			tf.size = 15;
			tf.font = "Verdana";
			tf.bold = true;
			
			txt = new TextField();
			txt.width = 560;
			txt.height = 32;
			txt.y = 5;
			//txt.border = true;
			//txt.borderColor = 0xff0000;
			txt.defaultTextFormat = tf;
			txt.text = str;
			addChild(txt);
		}
		
		public function set Qestion(str:String):void
		{
			txt.text = str;
		}
		
		public function AddWord(str:String):void
		{
			txt.appendText(str + " ");
		}
		
		public function ShowAnswer(str:String):void
		{
			txt.text = str;
		}
		
		public function get Text():String
		{
			var answer:String = txt.text;
			while (answer.charAt(0) == " ")
				answer = answer.slice(1);
			while (answer.charAt(answer.length - 1) == " ")
				answer = answer.slice(0, answer.length - 1);
			return answer;
		}
		
		public function Clear():void
		{
			txt.text = "";
		}
		
	}

}