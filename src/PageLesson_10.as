package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_10 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_10(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 10);
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
			arr[3] = "time";
			arr[4] = "she";
			arr[5] = "this";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "right";
			arr[10] = "not";
			arr[11] = "am";
			arr[12] = "we";
			arr[13] = "for";
			arr[14] = "he";
			arr[15] = "have";
			list.push(new Question("На этот раз я прав.", "This time I am right", arr, "sound_10_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "relax";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "time";
			arr[15] = "have";
			list.push(new Question("У меня будет время отдохнуть.", "I will have time to relax", arr, "sound_10_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "happened";
			arr[6] = "to";
			arr[7] = "happen";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "what";
			arr[15] = "have";
			list.push(new Question("Что с тобой произошло?", "What happened to you", arr, "sound_10_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "between";
			arr[6] = "to";
			arr[7] = "difference";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "them";
			arr[13] = "is";
			arr[14] = "what";
			arr[15] = "have";
			list.push(new Question("В чем разница между ними?", "What is the difference between them", arr, "sound_10_4"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "he";
			arr[5] = "between";
			arr[6] = "to";
			arr[7] = "grateful";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "what";
			arr[15] = "was";
			list.push(new Question("Он был благодарен мне.", "He was grateful to me", arr, "sound_10_5"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "he";
			arr[5] = "happened";
			arr[6] = "to";
			arr[7] = "happens";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "it";
			arr[15] = "was";
			list.push(new Question("Это с тобой произойдет.", "It happens to you", arr, "sound_10_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "he";
			arr[5] = "do";
			arr[6] = "to";
			arr[7] = "feel";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "it";
			arr[15] = "was";
			list.push(new Question("Как ты себя чувствуешь?", "How do you feel", arr, "sound_10_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "my";
			arr[2] = "will";
			arr[3] = "event";
			arr[4] = "he";
			arr[5] = "life";
			arr[6] = "to";
			arr[7] = "big";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "a";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "in";
			arr[15] = "this";
			list.push(new Question("Это большое событие в моей жизни.", "This is a big event in my life", arr, "sound_10_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "them";
			arr[2] = "will";
			arr[3] = "as";
			arr[4] = "she";
			arr[5] = "wise";
			arr[6] = "to";
			arr[7] = "big";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "a";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "as";
			arr[15] = "this";
			list.push(new Question("Она такая же мудрая как они.", "She is as wise as them", arr, "sound_10_9"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "now";
			arr[4] = "she";
			arr[5] = "wise";
			arr[6] = "to";
			arr[7] = "support";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "a";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "as";
			arr[15] = "this";
			list.push(new Question("Поддержи меня сейчас.", "Support me now", arr, "sound_10_10"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "now";
			arr[4] = "she";
			arr[5] = "clothes";
			arr[6] = "to";
			arr[7] = "fashion";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "on";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "as";
			arr[15] = "this";
			list.push(new Question("На мне модная одежда.", "Fashion clothes on me", arr, "sound_10_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "now";
			arr[4] = "she";
			arr[5] = "items";
			arr[6] = "to";
			arr[7] = "for";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "these";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "sale";
			arr[15] = "this";
			list.push(new Question("Эти изделия для продажи.", "These items for sale", arr, "sound_10_12"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "my";
			arr[2] = "will";
			arr[3] = "now";
			arr[4] = "she";
			arr[5] = "items";
			arr[6] = "to";
			arr[7] = "order";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "take";
			arr[11] = "how";
			arr[12] = "we";
			arr[13] = "is";
			arr[14] = "sale";
			arr[15] = "this";
			list.push(new Question("Прими мой заказ.", "Take my order", arr, "sound_10_13"));
		}
	}

}