package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_7 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_7(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 7);
			addChild(a);
			a.x = 40;
			a.y = 25;
		}
		
		private function Add_1():void 
		{
			var arr:Array = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "help";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "try";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "does";
			arr[14] = "he";
			arr[15] = "they";
			list.push(new Question("Я постараюсь помочь тебе.", "I will try to help you", arr, "sound_7_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "help";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "try";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "does";
			arr[14] = "he";
			arr[15] = "they";
			list.push(new Question("Я не буду помогать тебе.", "I will not help you", arr, "sound_7_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "you";
			arr[5] = "asking";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "ask";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "help";
			arr[13] = "does";
			arr[14] = "he";
			arr[15] = "are";
			list.push(new Question("Зачем ты просишь меня помочь тебе?", "Why are you asking me to help you", arr, "sound_7_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "who";
			arr[4] = "she";
			arr[5] = "help";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "try";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "helped";
			arr[14] = "that";
			arr[15] = "they";
			list.push(new Question("Кто помог тебе сделать это?", "Who helped you do that", arr, "sound_7_4"));
			
			arr = new Array(15);
			arr[0] = "shirt";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "who";
			arr[4] = "she";
			arr[5] = "buy";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "try";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "this";
			arr[14] = "where";
			arr[15] = "they";
			list.push(new Question("Где ты купил эту рубашку?", "Where did you buy this shirt", arr, "sound_7_5"));
			
			arr = new Array(15);
			arr[0] = "pay";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "who";
			arr[4] = "card";
			arr[5] = "buy";
			arr[6] = "or";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "try";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "credit";
			arr[14] = "cash";
			arr[15] = "they";
			list.push(new Question("Вы будете платить наличными или кредиткой?", "Will you pay cash or credit card", arr, "sound_7_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "you";
			arr[5] = "play";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "film";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "this";
			arr[13] = "does";
			arr[14] = "in";
			arr[15] = "are";
			list.push(new Question("Я не играл в этом фильме.", "I did not play in this film", arr, "sound_7_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "you";
			arr[5] = "play";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "change";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "this";
			arr[13] = "does";
			arr[14] = "want";
			arr[15] = "are";
			list.push(new Question("Я хочу переодеться.", "I want to change", arr, "sound_7_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "new";
			arr[4] = "you";
			arr[5] = "buy";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "change";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "this";
			arr[13] = "car";
			arr[14] = "want";
			arr[15] = "a";
			list.push(new Question("Я хочу купить новую машину.", "I want to buy a new car", arr, "sound_7_9"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "you";
			arr[5] = "them";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "go";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "this";
			arr[13] = "does";
			arr[14] = "want";
			arr[15] = "with";
			list.push(new Question("Не иди с ними.", "Do not go with them", arr, "sound_7_10"));
		}
		
	}

}