package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_15 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_15(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 15);
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
			arr[3] = "one";
			arr[4] = "she";
			arr[5] = "any";
			arr[6] = "to";
			arr[7] = "do";
			arr[8] = "you";
			arr[9] = "can";
			arr[10] = "not";
			arr[11] = "him";
			arr[12] = "we";
			arr[13] = "it";
			arr[14] = "he";
			arr[15] = "have";
			list.push(new Question("Кто-то может сделать (это можно сделать).", "One can do it", arr, "sound_15_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "cannot";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "one";
			arr[10] = "not";
			arr[11] = "this";
			arr[12] = "we";
			arr[13] = "do";
			arr[14] = "it";
			arr[15] = "they";
			list.push(new Question("Это нельзя сделать.", "One cannot do it", arr, "sound_15_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "somebody";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "can";
			arr[12] = "we";
			arr[13] = "do";
			arr[14] = "it";
			arr[15] = "they";
			list.push(new Question("Кое-кто может сделать это.", "Somebody can do it", arr, "sound_15_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "one";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "should";
			arr[10] = "not";
			arr[11] = "always";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "remember";
			arr[15] = "memory";
			list.push(new Question("Надо всегда помнить.", "One should always remember", arr, "sound_15_4"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "to";
			arr[6] = "to";
			arr[7] = "he";
			arr[8] = "you";
			arr[9] = "came";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "speak";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Он пришел чтобы поговорить.", "He came to speak", arr, "sound_15_5"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "can";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "call";
			arr[15] = "they";
			list.push(new Question("Могу ли я тебе позвонить?", "Can I call you", arr, "sound_15_6"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "don't";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "know";
			arr[8] = "you";
			arr[9] = "if";
			arr[10] = "I";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "should";
			arr[15] = "go";
			list.push(new Question("Я не знаю надо ли мне идти.", "I don't know if I should go", arr, "sound_15_7"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "here";
			arr[4] = "smell";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "one";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "can't";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "smoke";
			list.push(new Question("Здесь нельзя курить.", "One can't smoke here", arr, "sound_15_8"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "we";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "think";
			arr[6] = "to";
			arr[7] = "shouldn't";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "about";
			arr[15] = "it";
			list.push(new Question("Мы не должны думать об этом.", "We shouldn't think about it", arr, "sound_15_9"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "we";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "now";
			arr[6] = "to";
			arr[7] = "now";
			arr[8] = "you";
			arr[9] = "can't";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "do";
			arr[14] = "it";
			arr[15] = "they";
			list.push(new Question("Мы не можем сделать это сейчас.", "We can't do it now", arr, "sound_15_10"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "if";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "help";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Если ты мне поможешь...", "If you help me", arr, "sound_15_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "help";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "if";
			arr[6] = "to";
			arr[7] = "you";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "will";
			arr[12] = "be";
			arr[13] = "on";
			arr[14] = "my";
			arr[15] = "friend";
			list.push(new Question("Если ты поможешь мне, то будешь моим другом.", "If you help me you will be my friend", arr, "sound_15_12"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "come";
			arr[6] = "came";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "talk";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Я пришел поговорить с тобой.", "I come talk you", arr, "sound_15_13"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "where";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "invite";
			arr[10] = "not";
			arr[11] = "go";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "us";
			arr[15] = "they";
			list.push(new Question("Куда они пригласят нас сходить?", "Where will they invite us to go", arr, "sound_15_14"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "we";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "when";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "talk";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "about";
			arr[15] = "it";
			list.push(new Question("Когда мы сможем поговорить об этом?", "When we will talk about it", arr, "sound_15_15"));
			
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
			arr[10] = "work";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "on";
			arr[14] = "tomorrow";
			arr[15] = "they";
			list.push(new Question("Ты работаешь завтра?", "Will you work tomorrow", arr, "sound_15_16"));
			
			arr = new Array(15);
			arr[0] = "doesn't";
			arr[1] = "me";
			arr[2] = "will";
			arr[3] = "want";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "it";
			arr[14] = "talked";
			arr[15] = "about";
			list.push(new Question("Она не хочет говорить со мной об этом.", "She doesn't want to talk to me about it", arr, "sound_15_17"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "where";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "them";
			arr[12] = "we";
			arr[13] = "go";
			arr[14] = "talked";
			arr[15] = "tomorrow";
			list.push(new Question("Куда ты пойдешь завтра?", "Where will you go tomorrow", arr, "sound_15_18"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "where";
			arr[2] = "will";
			arr[3] = "why";
			arr[4] = "she";
			arr[5] = "yesterday";
			arr[6] = "to";
			arr[7] = "talk";
			arr[8] = "you";
			arr[9] = "the";
			arr[10] = "not";
			arr[11] = "did";
			arr[12] = "we";
			arr[13] = "go";
			arr[14] = "talked";
			arr[15] = "they";
			list.push(new Question("Куда ты вчера ходил?", "Where did you go yesterday", arr, "sound_15_19"));
			
		}
	}

}

