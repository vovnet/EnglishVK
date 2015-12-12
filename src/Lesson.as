package  
{
	import adobe.utils.CustomActions;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.media.Sound;
	import flash.utils.Timer;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class Lesson extends Sprite 
	{
		// список вопросов в уроке
		private var listQuestions:Vector.<Question> = new Vector.<Question>();
		// название урока
		private var title:String;
		// поле с вопросом
		private var questionField:QuestionString;
		// поле с ответом
		private var answerField:QuestionString;
		// список кнопок со словами
		private var listButtons:Vector.<WordButton> = new Vector.<WordButton>();
		// текущий вопрос
		private var currentQuestion:Question;
		// кнопка подсказки
		private var helpButton:SimpleButton;
		// кнопка очистки введенной строки
		private var deleteButton:SimpleButton;
		// счетчик кликов (для проверки слов)
		private var clickWords:int = 0;
		// предыдущее рандомное число
		private var prevRandom:Number;
		// таймер при правильном ответе
		private var timer:Timer;
		// смайл
		private var smile:gr_correct_answer = new gr_correct_answer();
		// кнопка "Уроки"
		private var btn_lessons:gr_btn_lessons = new gr_btn_lessons();
		// если это новый вопрос, а не тот на который юзер отвечает со следующей попытки
		private var pushClear:Boolean = false;
		// хранит текст слов на предыдущем наборе кнопок
		private var prevListButton:Vector.<String>;
		// кнопка открывающая конспект
		private var btnWorkBook:SimpleButton = new gr_btn_work_book();
		// сама подсказка
		private var workBook:WorkBook;
		// кнопка открывающая словарь
		private var btnDictionary:SimpleButton = new gr_btn_dictionary();
		// сам словарь
		private var dictionary:WorkBook;
		// кнопка перехода на следующий вопрос
		private var btn_nextAsk:btn_NextAsk = new btn_NextAsk();
		
		// номер урока
		private var numLesson:int;
		
		private var stateManager:StateManager;
		
		private var soundButton:SoundButtonController;
		
		public function Lesson(questions:Vector.<Question>, manager:StateManager, numLesson:int) 
		{
			stateManager = manager;
			listQuestions = questions;
			currentQuestion = listQuestions[0];
			this.numLesson = numLesson;
			
			addChild(btn_lessons);
			btn_lessons.x = 600;
			btn_lessons.y = -40;
			btn_lessons.addEventListener(MouseEvent.CLICK, ClickLessonsHandler);
			
			var ob:gr_container_words = new gr_container_words();
			addChild(ob);
			ob.x = 15;
			ob.y = 23;
			
			questionField = new QuestionString();
			addChild(questionField);
			questionField.x = 30;
			questionField.y = 50;
			
			answerField = new QuestionString();
			addChild(answerField);
			answerField.x = 30;
			answerField.y = 110;
			
			helpButton = new gr_help_btn();
			addChild(helpButton);
			helpButton.x = 600;
			helpButton.y = 50;
			helpButton.addEventListener(MouseEvent.CLICK, HelpButtonHandler);
			
			deleteButton = new gr_del_btn();
			addChild(deleteButton);
			deleteButton.addEventListener(MouseEvent.CLICK, DeleteButtonHandler);
			deleteButton.x = 600;
			deleteButton.y = 110;
			
			addChild(btn_nextAsk);
			btn_nextAsk.x = 650;
			btn_nextAsk.y = 78;
			btn_nextAsk.addEventListener(MouseEvent.CLICK, NextAskHandler);
			
			soundButton = new SoundButtonController(stateManager);
			addChild(soundButton);
			soundButton.x = 40;
			soundButton.y = -30;
			
			Ask();
		}
		
		// добавляет к уроку конспект
		public function AddWorkBook(wb:WorkBook):void
		{
			workBook = wb;
			addChild(btnWorkBook);
			btnWorkBook.x = 450;
			btnWorkBook.y = -40;
			btnWorkBook.addEventListener(MouseEvent.CLICK, WorkBookHandler);
		}
		
		// добавляет к уроку словарь
		public function AddDictionary(dic:WorkBook):void
		{
			dictionary = dic;
			addChild(btnDictionary);
			btnDictionary.x = 290;
			btnDictionary.y = -40;
			btnDictionary.addEventListener(MouseEvent.CLICK, DictionaryHandler);
		}
		
		
		// задает рандомный вопрос из списка
		private function Ask():void
		{
			var rand:Number;
			var unique:Boolean = false;
			// выбираем только то рандомное число, которое не совпадает с предыдущим
			while (!unique)
			{
				rand = Math.round(Math.random() * (listQuestions.length - 1));
				//rand = (rand < 0) ? 1 : rand;
				if (rand != prevRandom)
				{
					unique = true;
					prevRandom = rand;
				}
			}
			currentQuestion = listQuestions[rand];
			questionField.Qestion = currentQuestion.Query;
			CreateButtons();
			//trace(currentQuestion.NumWords);
		}
		
		// заполняем массив кнопками
		private function FillButtonsList():void
		{
			// рандомно перемешиваем кнопки
			if (!pushClear)
			{
				for (var i:int = 0; i < 16; i++)
				{
					var c:Sprite = new WordButton(currentQuestion.Variants[i]);
					listButtons.push(c);
				}
				
				var btn:WordButton;
				var rand:Number;
				for (var j:int = 0; j < 50; j++)
				{
					rand = Math.round(Math.random() * (listButtons.length - 1));
					btn = listButtons[rand];
					listButtons[rand] = listButtons[0];
					listButtons[0] = btn;
				}
				
				// сохраняем текущий текст кнопок в массив для избежания повторений, если юзер нажмет очистку
				prevListButton = new Vector.<String>();
				for (var k:int = 0; k < 16; k++)
				{
					prevListButton.push(listButtons[k].word);
				}
			}
			else
			{
				for (var f:int = 0; f < 16; f++)
				{
					var d:Sprite = new WordButton(prevListButton[f]);
					listButtons.push(d);
				}
			}
		}
		
		// создает кнопки с ответами на текущий вопрос
		private function CreateButtons():void
		{
			// заполняем список кнопок и рандомно их перемешиваем
			FillButtonsList();
			var t:int = 0;
			
			for (var i:int = 0; i < 4; i++)
			{
				for (var j:int = 0; j < 4; j++)
				{
					// если это раскоментировать, то кнопки не будут рандомно перемешаны
					/*var c:Sprite = new WordButton(currentQuestion.Variants[t++]);
					listButtons.push(c);*/
					var c:Sprite = listButtons[t++];
					addChild(c);
					c.x = (c.width + 10) * i + 40;
					c.y = (c.height + 10) * j + 180;
					c.addEventListener(MouseEvent.CLICK, ClickWordButtonHandler);
				}
			}
		}
		
		// удаляем обработчики кнопок и сами кнопки
		private function ClearButtons():void
		{
			for (var i:int = 0; i < listButtons.length; i++)
			{
				listButtons[i].removeEventListener(MouseEvent.CLICK, ClickWordButtonHandler);
				if (contains(listButtons[i]))
				{
					removeChild(listButtons[i]);
				}
			}
			listButtons = new Vector.<WordButton>();
		}
		
		// проверка правильности ответа
		private function CheckAnswer():void
		{
			if (clickWords >= currentQuestion.NumWords)
			{
				var str1:String = answerField.Text.toLocaleLowerCase();
				var str2:String = currentQuestion.Answer.toLocaleLowerCase();
				if (str1 == str2)
				{
					var str3:String = currentQuestion.Query;
					if (str3.charAt(str3.length - 1) == "?")
					{
						answerField.ShowAnswer(currentQuestion.Answer.concat("?"));
					}
					else
					{
						answerField.ShowAnswer(currentQuestion.Answer.concat("."));
					}
					CorrectAnswer();
				}
			}
		}
		
		// метод вызывается, когда ответ правильный
		private function CorrectAnswer():void
		{
			pushClear = false;
			timer = new Timer(30, 30);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, TimerCompleteHandler);
			timer.start();
			addChild(smile);
			smile.x = 400;
			smile.y = 300;
			smile.gotoAndPlay(1);
			
			
			var s:SoundManager = SoundManager.getInstance();
			s.play(numLesson, currentQuestion.nameSound);
		}
		
		private function TimerCompleteHandler(e:TimerEvent):void 
		{
			timer.removeEventListener(TimerEvent.TIMER_COMPLETE, TimerCompleteHandler);
			timer.stop();
			if (contains(smile))
			{
				removeChild(smile);
				smile.stop();
			}
			answerField.Clear();
			ClearButtons();
			Ask();
		}
		
		private function ClickWordButtonHandler(e:Event):void 
		{
			var btn:WordButton = WordButton(e.currentTarget);
			btn.removeEventListener(MouseEvent.CLICK, ClickWordButtonHandler);
			btn.alpha = 0.4;
			answerField.AddWord(btn.word);
			clickWords++;
			CheckAnswer();
		}
		
		private function HelpButtonHandler(e:MouseEvent):void 
		{
			var str3:String = currentQuestion.Query;
			if (str3.charAt(str3.length - 1) == "?")
			{
				answerField.ShowAnswer(currentQuestion.Answer.concat("?"));
			}
			else
			{
				answerField.ShowAnswer(currentQuestion.Answer.concat("."));
			}
			
			var s:SoundManager = SoundManager.getInstance();
			s.play(numLesson, currentQuestion.nameSound);
		}
		
		private function DeleteButtonHandler(e:MouseEvent):void 
		{
			pushClear = true;
			answerField.Clear();
			ClearButtons();
			CreateButtons();
		}
		
		private function ClickLessonsHandler(e:MouseEvent):void 
		{
			ClearButtons();
			btn_lessons.removeEventListener(MouseEvent.CLICK, ClickLessonsHandler);
			stateManager.changeState(StateManager.MAIN_MENU_STATE);
		}
		
		private function WorkBookHandler(e:MouseEvent):void 
		{
			addChild(workBook);
			workBook.visible = true;
		}
		
		private function DictionaryHandler(e:MouseEvent):void 
		{
			addChild(dictionary);
			dictionary.visible = true;
		}
		
		private function NextAskHandler(e:MouseEvent):void 
		{
			pushClear = false;
			answerField.Clear();
			ClearButtons();
			Ask();
		}
		
	}

}