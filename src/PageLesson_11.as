package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_11 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_11(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 11);
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
			arr[3] = "have";
			arr[4] = "she";
			arr[5] = "love";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "loved";
			arr[10] = "not";
			arr[11] = "him";
			arr[12] = "we";
			arr[13] = "for";
			arr[14] = "he";
			arr[15] = "have";
			list.push(new Question("Я любил.", "I have loved", arr, "sound_11_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "afraid";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Я боюсь.", "I am afraid", arr, "sound_11_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "afraid";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Я не боюсь.", "I am not afraid", arr, "sound_11_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "afraid";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "they";
			list.push(new Question("Ты боишься?", "Are you afraid", arr, "sound_11_4"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "afraid";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "they";
			list.push(new Question("Почему ты боишься?", "Why are you afraid", arr, "sound_11_5"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "cold";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "Yesterday";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Вчера было холодно.", "Yesterday it was cold", arr, "sound_11_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "cold";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "stuffy";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Здесь очень душно.", "It is so stuffy here", arr, "sound_11_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "cold";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "ok";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Ты в порядке?", "Are you ok", arr, "sound_11_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "cold";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Ты голоден?", "Are you hungry", arr, "sound_11_9"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Ты сердишься?", "Are you angry", arr, "sound_11_10"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "it";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "happy";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("Ты счастлив?", "Are you happy", arr, "sound_11_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "breakfast";
			arr[4] = "it";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "here";
			arr[8] = "you";
			arr[9] = "before";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "are";
			arr[15] = "was";
			list.push(new Question("До завтрака я был голоден.", "I was hungry before breakfast", arr, "sound_11_12"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "breakfast";
			arr[4] = "of";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "After";
			arr[8] = "you";
			arr[9] = "before";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "afraid";
			arr[15] = "nothing";
			list.push(new Question("После завтрака я ничего не боюсь.", "After breakfast I am afraid of nothing", arr, "sound_11_13"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "breakfast";
			arr[4] = "of";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "After";
			arr[8] = "you";
			arr[9] = "before";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "afraid";
			arr[15] = "nothing";
			list.push(new Question("Я не боюсь ничего.", "I am afraid of nothing", arr, "sound_11_14"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "breakfast";
			arr[4] = "of";
			arr[5] = "angry";
			arr[6] = "to";
			arr[7] = "After";
			arr[8] = "you";
			arr[9] = "before";
			arr[10] = "not";
			arr[11] = "hungry";
			arr[12] = "is";
			arr[13] = "on";
			arr[14] = "everything";
			arr[15] = "tired";
			list.push(new Question("Я устал от всего.", "I am tired of everything", arr, "sound_11_15"));
		}
	}

}