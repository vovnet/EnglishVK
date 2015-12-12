package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_16 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_16(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 16);
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
			arr[3] = "he";
			arr[4] = "she";
			arr[5] = "any";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "loves";
			arr[10] = "love";
			arr[11] = "him";
			arr[12] = "we";
			arr[13] = "for";
			arr[14] = "he";
			arr[15] = "have";
			list.push(new Question("Он любит.", "He loves", arr, "sound_16_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "is";
			arr[6] = "to";
			arr[7] = "he";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "loved";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "love";
			arr[15] = "they";
			list.push(new Question("Он любим.", "He is loved", arr, "sound_16_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "sees";
			arr[6] = "to";
			arr[7] = "he";
			arr[8] = "you";
			arr[9] = "see";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Он видит.", "He sees", arr, "sound_16_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "he";
			arr[6] = "to";
			arr[7] = "see";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "is";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "seen";
			arr[15] = "sees";
			list.push(new Question("Его видят.", "He is seen", arr, "sound_16_4"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "built";
			arr[5] = "he";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "house";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Он построил дом.", "He built the house", arr, "sound_16_5"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "builds";
			arr[6] = "to";
			arr[7] = "house";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "was";
			arr[14] = "built";
			arr[15] = "they";
			list.push(new Question("Дом был построен.", "The house was built", arr, "sound_16_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "he";
			arr[5] = "did";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "it";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Он сделал это.", "He did it", arr, "sound_16_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "it";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "was";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "done";
			list.push(new Question("Это было сделано.", "It was done", arr, "sound_16_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "be";
			arr[4] = "she";
			arr[5] = "he";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "build";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "house";
			arr[15] = "they";
			list.push(new Question("Он построит дом.", "He will be build the house", arr, "sound_16_9"));
			
			arr = new Array(15);
			arr[0] = "house";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "the";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "be";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "built";
			arr[15] = "build";
			list.push(new Question("Дом будет построен.", "The house will be built", arr, "sound_16_10"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "have";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "been";
			arr[15] = "they";
			list.push(new Question("Я побывал.", "I have been", arr, "sound_16_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "him";
			arr[2] = "will";
			arr[3] = "but";
			arr[4] = "you";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "don't";
			arr[11] = "he";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "see";
			arr[15] = "sees";
			list.push(new Question("Ты не видешь его, но он видит тебя.", "You don't see him but he sees you", arr, "sound_16_12"));
			
			arr = new Array(15);
			arr[0] = "did";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "discuss";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "this";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "question";
			arr[15] = "they";
			list.push(new Question("Ты хочешь обсудить этот вопрос?", "Did you discuss this question", arr, "sound_16_13"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "tomorrow";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "question";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "this";
			arr[15] = "discuss";
			list.push(new Question("Тебе предстоит обсудить этот вопрос завтра.", "You will discuss this question tomorrow", arr, "sound_16_14"));
		}
	}

}

