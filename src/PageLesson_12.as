package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_12 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_12(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 12);
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
			arr[3] = "stay";
			arr[4] = "she";
			arr[5] = "hotel";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "from";
			arr[10] = "not";
			arr[11] = "him";
			arr[12] = "we";
			arr[13] = "in";
			arr[14] = "a";
			arr[15] = "have";
			list.push(new Question("Остановиться в гостиннице.", "To stay in a hotel", arr, "sound_12_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "to";
			arr[6] = "friends";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "stay";
			arr[15] = "they";
			list.push(new Question("Остановиться у друзей.", "To stay with friends", arr, "sound_12_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "a";
			arr[5] = "to";
			arr[6] = "eat";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "stay";
			arr[15] = "resturant";
			list.push(new Question("Есть в ресторане.", "To eat in a resturant", arr, "sound_12_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "is";
			arr[5] = "to";
			arr[6] = "eat";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "stay";
			arr[15] = "enough";
			list.push(new Question("Этого достаточно.", "It is enough", arr, "sound_12_4"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "go";
			arr[5] = "to";
			arr[6] = "eat";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "need";
			arr[15] = "there";
			list.push(new Question("Тебе нужно пойти туда.", "You need to go there", arr, "sound_12_5"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "go";
			arr[5] = "to";
			arr[6] = "eat";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "need";
			arr[15] = "your";
			list.push(new Question("Мне нужна твоя помощь.", "I need your help", arr, "sound_12_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "to";
			arr[6] = "enough";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "need";
			arr[15] = "enough";
			list.push(new Question("Хватит, значит хватит.", "Enough is enough", arr, "sound_12_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "to";
			arr[6] = "don't";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talk";
			arr[15] = "strangers";
			list.push(new Question("Я не разговариваю с незнакомцами.", "I don't talk to strangers", arr, "sound_12_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "to";
			arr[6] = "don't";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "with";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talk";
			arr[15] = "strange";
			list.push(new Question("Это странно.", "It is strange", arr, "sound_12_9"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "of";
			arr[6] = "fourth";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "four";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talk";
			arr[15] = "July";
			list.push(new Question("Четвертое июля.", "The fourth of July", arr, "sound_12_10"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "my";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "of";
			arr[6] = "third";
			arr[7] = "help";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "December";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talk";
			arr[15] = "birthday";
			list.push(new Question("Мой день рождения третьего декабря.", "My birthday is on the third of December", arr, "sound_12_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "my";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "of";
			arr[6] = "age";
			arr[7] = "same";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "are";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talk";
			arr[15] = "they";
			list.push(new Question("Они ровесники.", "They are of the same age", arr, "sound_12_12"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "my";
			arr[2] = "will";
			arr[3] = "is";
			arr[4] = "go";
			arr[5] = "of";
			arr[6] = "age";
			arr[7] = "all";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "it";
			arr[11] = "are";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "same";
			arr[15] = "they";
			list.push(new Question("Все равно.", "It is all the same", arr, "sound_12_13"));
		}
	}

}