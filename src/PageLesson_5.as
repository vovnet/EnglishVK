package  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class PageLesson_5 extends Sprite 
	{
		private var stateManager:StateManager;
		private var list:Vector.<Question> = new Vector.<Question>(); // список вопросов
		
		public function PageLesson_5(manager:StateManager) 
		{
			stateManager = manager;
			
			Add_1();
			
			
			var a:Lesson = new Lesson(list, stateManager, 5);
			addChild(a);
			a.x = 40;
			a.y = 25;
			
			// добавляем к уроку конспект
			var wb:WorkBook = new WorkBook(new wb_5());
			a.AddWorkBook(wb);
			
			// добавляем к уроку словарь
			var dic:WorkBook = new WorkBook(new dic_5());
			a.AddDictionary(dic);
		}
		
		private function Add_1():void
		{
			var arr:Array = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "your";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "what";
			arr[9] = "as";
			arr[10] = "older";
			arr[11] = "is";
			arr[12] = "you";
			arr[13] = "a";
			arr[14] = "than";
			arr[15] = "oldest";
			list.push(new Question("Он старше, чем ты.", "He is older than you", arr, "sound_5_1"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "as";
			arr[10] = "beautiful";
			arr[11] = "is";
			arr[12] = "you";
			arr[13] = "a";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Она самая красивая.", "She is the most beautiful", arr, "sound_5_2"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "as";
			arr[10] = "beautiful";
			arr[11] = "is";
			arr[12] = "today";
			arr[13] = "yesterday";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Сегодня она красивее, чем вчера.", "Today she is more beautiful than yesterday", arr, "sound_5_3"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "as";
			arr[10] = "worst";
			arr[11] = "is";
			arr[12] = "today";
			arr[13] = "yesterday";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Он самый худший.", "He is the worst", arr, "sound_5_4"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "am";
			arr[2] = "will";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "as";
			arr[10] = "worst";
			arr[11] = "is";
			arr[12] = "today";
			arr[13] = "worse";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Она хуже, чем они.", "She is worse than they", arr, "sound_5_5"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "am";
			arr[2] = "better";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "as";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "today";
			arr[13] = "never";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Лучше поздно, чем никогда.", "Better late than never", arr, "sound_5_6"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "are";
			arr[2] = "better";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "best";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "today";
			arr[13] = "never";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Они самые лучшие.", "They are the best", arr, "sound_5_7"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "are";
			arr[2] = "this";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "church";
			arr[9] = "best";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "way";
			arr[13] = "shortest";
			arr[14] = "than";
			arr[15] = "the";
			list.push(new Question("Это самая короткая дорога к церкви.", "This is the shortest way to the church", arr, "sound_5_8"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "are";
			arr[2] = "my";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "friend";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "tall";
			arr[13] = "tallest";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Мой друг самый высокий.", "My friend is the tallest", arr, "sound_5_9"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "are";
			arr[2] = "my";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "yours";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "pans";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "thin";
			arr[13] = "thinner";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Мои блины тоньше, чем твои.", "My pans thinner than yours", arr, "sound_5_10"));
			
			arr = new Array(15);
			arr[0] = "they";
			arr[1] = "are";
			arr[2] = "my";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "expensive";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "this";
			arr[10] = "late";
			arr[11] = "is";
			arr[12] = "thin";
			arr[13] = "dress";
			arr[14] = "than";
			arr[15] = "most";
			list.push(new Question("Это самое дорогое платье.", "This is the most expensive dress", arr, "sound_5_11"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "my";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "come";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "this";
			arr[10] = "3";
			arr[11] = "is";
			arr[12] = "thin";
			arr[13] = "came";
			arr[14] = "days";
			arr[15] = "most";
			list.push(new Question("Я приду через 3 дня.", "I will come in 3 days", arr, "sound_5_12"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "ago";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "come";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "is";
			arr[12] = "3";
			arr[13] = "went";
			arr[14] = "days";
			arr[15] = "most";
			list.push(new Question("Он уехал 3 дня назад.", "He went 3 days ago", arr, "sound_5_13"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "see";
			arr[3] = "in";
			arr[4] = "to";
			arr[5] = "the";
			arr[6] = "a";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "is";
			arr[12] = "you";
			arr[13] = "week";
			arr[14] = "days";
			arr[15] = "most";
			list.push(new Question("Я увижу тебя через неделю.", "I will see you in a week", arr, "sound_5_14"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "see";
			arr[3] = "in";
			arr[4] = "saw";
			arr[5] = "the";
			arr[6] = "2";
			arr[7] = "she";
			arr[8] = "more";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "him";
			arr[12] = "you";
			arr[13] = "weeks";
			arr[14] = "days";
			arr[15] = "ago";
			list.push(new Question("Я видела его 2 недели назад.", "I saw him 2 weeks ago", arr, "sound_5_15"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "tomorrow";
			arr[3] = "in";
			arr[4] = "work";
			arr[5] = "the";
			arr[6] = "not";
			arr[7] = "she";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "did";
			arr[12] = "you";
			arr[13] = "yesterday";
			arr[14] = "days";
			arr[15] = "ago";
			list.push(new Question("Вчера я не работал.", "Yesterday I did not work", arr, "sound_5_16"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "tomorrow";
			arr[3] = "in";
			arr[4] = "work";
			arr[5] = "the";
			arr[6] = "not";
			arr[7] = "she";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "did";
			arr[12] = "you";
			arr[13] = "yesterday";
			arr[14] = "days";
			arr[15] = "ago";
			list.push(new Question("Сегодня я буду работать.", "Today I will work", arr, "sound_5_17"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "tomorrow";
			arr[3] = "in";
			arr[4] = "here";
			arr[5] = "the";
			arr[6] = "not";
			arr[7] = "she";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "did";
			arr[12] = "you";
			arr[13] = "yesterday";
			arr[14] = "be";
			arr[15] = "ago";
			list.push(new Question("Я буду здесь завтра.", "I will be here tomorrow", arr, "sound_5_18"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "Monday";
			arr[3] = "in";
			arr[4] = "here";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "she";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "did";
			arr[12] = "you";
			arr[13] = "yesterday";
			arr[14] = "be";
			arr[15] = "come";
			list.push(new Question("Я приду в понедельник.", "I will come on Monday", arr, "sound_5_19"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "Tuesday";
			arr[3] = "in";
			arr[4] = "here";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "she";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "you";
			arr[13] = "to";
			arr[14] = "be";
			arr[15] = "come";
			list.push(new Question("Я приходил к тебе во вторник.", "I came to you on Tuesday", arr, "sound_5_20"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "Tuesday";
			arr[3] = "in";
			arr[4] = "month";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "you";
			arr[13] = "to";
			arr[14] = "be";
			arr[15] = "come";
			list.push(new Question("Я приду в следующем месяце.", "I will come next month", arr, "sound_5_21"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "her";
			arr[3] = "in";
			arr[4] = "month";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "today";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "week";
			arr[13] = "to";
			arr[14] = "last";
			arr[15] = "come";
			list.push(new Question("Я приходил к ней на прошлой неделе.", "I came to her last week", arr, "sound_5_22"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "her";
			arr[3] = "in";
			arr[4] = "month";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "work";
			arr[9] = "this";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "time";
			arr[13] = "to";
			arr[14] = "last";
			arr[15] = "not";
			list.push(new Question("В следующий раз я не буду работать.", "Next time I will not work", arr, "sound_5_23"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "her";
			arr[3] = "in";
			arr[4] = "built";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "work";
			arr[9] = "we";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "time";
			arr[13] = "build";
			arr[14] = "last";
			arr[15] = "not";
			list.push(new Question("Мы построили в прошлый раз.", "We built in the last time", arr, "sound_5_24"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "today";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "speak";
			arr[9] = "we";
			arr[10] = "he";
			arr[11] = "came";
			arr[12] = "time";
			arr[13] = "better";
			arr[14] = "last";
			arr[15] = "yesterday";
			list.push(new Question("Сегодня я говорю лучше, чем вчера.", "Today I speak better than yesterday", arr, "sound_5_25"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "today";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "speak";
			arr[9] = "we";
			arr[10] = "spoke";
			arr[11] = "came";
			arr[12] = "worse";
			arr[13] = "better";
			arr[14] = "last";
			arr[15] = "yesterday";
			list.push(new Question("Вчера я говорил хуже, чем сегодня.", "Yesterday I spoke worse than today", arr, "sound_5_26"));
			
			arr = new Array(15);
			arr[0] = "October";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "shorter";
			arr[5] = "the";
			arr[6] = "on";
			arr[7] = "next";
			arr[8] = "speak";
			arr[9] = "more";
			arr[10] = "spoke";
			arr[11] = "November";
			arr[12] = "worse";
			arr[13] = "better";
			arr[14] = "last";
			arr[15] = "short";
			list.push(new Question("Ноябрь короче, чем октябрь.", "November shorter than October", arr, "sound_5_27"));
			
			arr = new Array(15);
			arr[0] = "February";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "shorter";
			arr[5] = "the";
			arr[6] = "month";
			arr[7] = "next";
			arr[8] = "is";
			arr[9] = "more";
			arr[10] = "spoke";
			arr[11] = "shortest";
			arr[12] = "worse";
			arr[13] = "better";
			arr[14] = "last";
			arr[15] = "short";
			list.push(new Question("Февраль самый короткий месяц.", "February is the shortest month", arr, "sound_5_28"));
			
			arr = new Array(15);
			arr[0] = "Moscow";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "shorter";
			arr[5] = "the";
			arr[6] = "month";
			arr[7] = "next";
			arr[8] = "is";
			arr[9] = "more";
			arr[10] = "bigger";
			arr[11] = "Kiev";
			arr[12] = "worse";
			arr[13] = "big";
			arr[14] = "last";
			arr[15] = "short";
			list.push(new Question("Москва больше, чем Киев.", "Moscow is bigger than Kiev", arr, "sound_5_29"));
			
			arr = new Array(15);
			arr[0] = "I'm";
			arr[1] = "will";
			arr[2] = "than";
			arr[3] = "in";
			arr[4] = "best";
			arr[5] = "the";
			arr[6] = "month";
			arr[7] = "next";
			arr[8] = "is";
			arr[9] = "more";
			arr[10] = "builder";
			arr[11] = "the";
			arr[12] = "worse";
			arr[13] = "big";
			arr[14] = "last";
			arr[15] = "short";
			list.push(new Question("Я лучший строитель.", "I'm the best builder", arr, "sound_5_30"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "that";
			arr[3] = "in";
			arr[4] = "best";
			arr[5] = "the";
			arr[6] = "went";
			arr[7] = "house";
			arr[8] = "is";
			arr[9] = "nice";
			arr[10] = "towards";
			arr[11] = "the";
			arr[12] = "worse";
			arr[13] = "big";
			arr[14] = "last";
			arr[15] = "short";
			list.push(new Question("Я ходил по направлению к тому красивому дому.", "I went towards that nice house", arr, "sound_5_31"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "since";
			arr[2] = "that";
			arr[3] = "in";
			arr[4] = "best";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "coffee";
			arr[8] = "is";
			arr[9] = "nice";
			arr[10] = "strong";
			arr[11] = "the";
			arr[12] = "worse";
			arr[13] = "big";
			arr[14] = "drink";
			arr[15] = "doesn't";
			list.push(new Question("С тех пор он не пьет крепкий кофе.", "Since that time he doesn't drink strong coffee", arr, "sound_5_32"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "that";
			arr[3] = "in";
			arr[4] = "go";
			arr[5] = "the";
			arr[6] = "we";
			arr[7] = "coffee";
			arr[8] = "is";
			arr[9] = "Yalta";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "worse";
			arr[13] = "big";
			arr[14] = "a";
			arr[15] = "year";
			list.push(new Question("Через год мы пойдем в Ялту.", "In a year we will go to Yalta", arr, "sound_5_33"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "factory";
			arr[2] = "that";
			arr[3] = "in";
			arr[4] = "at";
			arr[5] = "the";
			arr[6] = "he";
			arr[7] = "coffee";
			arr[8] = "is";
			arr[9] = "work";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "bad";
			arr[13] = "big";
			arr[14] = "a";
			arr[15] = "didn't";
			list.push(new Question("Он не работал на той плохой фабрике.", "He didn't work at that bad factory", arr, "sound_5_34"));
			
			arr = new Array(15);
			arr[0] = "from";
			arr[1] = "time";
			arr[2] = "that";
			arr[3] = "in";
			arr[4] = "at";
			arr[5] = "the";
			arr[6] = "she";
			arr[7] = "time";
			arr[8] = "is";
			arr[9] = "work";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "awoke";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "cried";
			list.push(new Question("Время от времени она просыпалась и плакала.", "From time to time she awoke and cried", arr, "sound_5_35"));
			
			arr = new Array(15);
			arr[0] = "after";
			arr[1] = "rude";
			arr[2] = "that";
			arr[3] = "my";
			arr[4] = "at";
			arr[5] = "words";
			arr[6] = "he";
			arr[7] = "time";
			arr[8] = "is";
			arr[9] = "work";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "went";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "away";
			list.push(new Question("После моих грубых слов он ушел.", "After my rude words he went away", arr, "sound_5_36"));
			
			arr = new Array(15);
			arr[0] = "small";
			arr[1] = "bed";
			arr[2] = "that";
			arr[3] = "between";
			arr[4] = "at";
			arr[5] = "chair";
			arr[6] = "he";
			arr[7] = "time";
			arr[8] = "is";
			arr[9] = "work";
			arr[10] = "the";
			arr[11] = "the";
			arr[12] = "went";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "arm-chair";
			list.push(new Question("Эта маленькая кровать стоит между стулом и креслом?", "Is that small bed between the chair and the arm-chair", arr, "sound_5_37"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "will";
			arr[2] = "that";
			arr[3] = "love";
			arr[4] = "at";
			arr[5] = "during";
			arr[6] = "he";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "all";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "life";
			list.push(new Question("Я буду любить тебя всю мою жизнь.", "I will love you during all my life", arr, "sound_5_38"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "go";
			arr[2] = "by";
			arr[3] = "love";
			arr[4] = "at";
			arr[5] = "her";
			arr[6] = "she";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "grandmother";
			arr[13] = "and";
			arr[14] = "didn't";
			arr[15] = "yesterday";
			list.push(new Question("Она не ездила к своей бабушке вчера.", "She didn't go by her grandmother yesterday", arr, "sound_5_39"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "go";
			arr[2] = "away";
			arr[3] = "untill";
			arr[4] = "at";
			arr[5] = "her";
			arr[6] = "she";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "come";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "don't";
			list.push(new Question("Я не уйду пока ты не придешь.", "I don't go away untill you come", arr, "sound_5_40"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "do";
			arr[2] = "get";
			arr[3] = "this";
			arr[4] = "at";
			arr[5] = "beautiful";
			arr[6] = "presents";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "every";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "year";
			list.push(new Question("Ты получаешь этот прекрасный подарок каждый год?", "Do you get this beautiful presents every year", arr, "sound_5_41"));
			
			arr = new Array(15);
			arr[0] = "I";
			arr[1] = "do";
			arr[2] = "get";
			arr[3] = "this";
			arr[4] = "at";
			arr[5] = "interesting";
			arr[6] = "book";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "the";
			arr[12] = "for";
			arr[13] = "and";
			arr[14] = "a";
			arr[15] = "year";
			list.push(new Question("Эта интересная книга для тебя.", "This interesting book is for you", arr, "sound_5_42"));
			
			arr = new Array(15);
			arr[0] = "did";
			arr[1] = "do";
			arr[2] = "get";
			arr[3] = "this";
			arr[4] = "at";
			arr[5] = "up";
			arr[6] = "book";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "at";
			arr[12] = "for";
			arr[13] = "seven";
			arr[14] = "a";
			arr[15] = "o'clock";
			list.push(new Question("Ты встал в семь часов?", "Did you get up at seven o'clock", arr, "sound_5_43"));
			
			arr = new Array(15);
			arr[0] = "sister's";
			arr[1] = "do";
			arr[2] = "his";
			arr[3] = "birthday";
			arr[4] = "at";
			arr[5] = "up";
			arr[6] = "book";
			arr[7] = "my";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "on";
			arr[11] = "at";
			arr[12] = "the";
			arr[13] = "first";
			arr[14] = "of";
			arr[15] = "January";
			list.push(new Question("День Рождения его сестры первого января.", "His sister's birthday is on the first of January", arr, "sound_5_44"));
			
			arr = new Array(15);
			arr[0] = "will";
			arr[1] = "go";
			arr[2] = "get";
			arr[3] = "this";
			arr[4] = "at";
			arr[5] = "up";
			arr[6] = "she";
			arr[7] = "home";
			arr[8] = "is";
			arr[9] = "you";
			arr[10] = "to";
			arr[11] = "at";
			arr[12] = "for";
			arr[13] = "after";
			arr[14] = "a";
			arr[15] = "school";
			list.push(new Question("Пойдет ли она домой после школы?", "Will she go home after school", arr, "sound_5_45"));
			
		}
		
	}

}