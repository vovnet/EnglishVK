package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class MainMenu extends Sprite
	{
		private var stateManager:StateManager;
		
		private var btnLess_1:LessonButton;
		private var btnLess_2:LessonButton;
		private var btnLess_3:LessonButton;
		private var btnLess_4:LessonButton;
		private var btnLess_5:LessonButton;
		private var btnLess_6:LessonButton;
		private var btnLess_7:LessonButton;
		private var btnLess_8:LessonButton;
		private var btnLess_9:LessonButton;
		private var btnLess_10:LessonButton;
		private var btnLess_11:LessonButton;
		private var btnLess_12:LessonButton;
		private var btnLess_13:LessonButton;
		private var btnLess_14:LessonButton;
		private var btnLess_15:LessonButton;
		private var btnLess_16:LessonButton;
		
		public function MainMenu(manager:StateManager) 
		{
			stateManager = manager;
			
			x = 20;
			y = 20;
			
			var btnLess_1:LessonButton = new LessonButton("Урок №1", "Базовая форма глагола");
			addChild(btnLess_1);
			btnLess_1.x = 30;
			btnLess_1.y = 10;
			btnLess_1.addEventListener(MouseEvent.CLICK, startLess_1);
			
			btnLess_2 = new LessonButton("Урок №2", "Местоимения и вопросительные слова");
			addChild(btnLess_2);
			btnLess_2.x = 210;
			btnLess_2.y = 10;
			btnLess_2.addEventListener(MouseEvent.CLICK, startLess_2);
			
			btnLess_3 = new LessonButton("Урок №3", "Глагол \"to be\", притяжательные местоимения и глаголы \"like\" и \"want\"");
			addChild(btnLess_3);
			btnLess_3.x = 390;
			btnLess_3.y = 10;
			btnLess_3.addEventListener(MouseEvent.CLICK, startLess_3);
			
			btnLess_4 = new LessonButton("Урок №4", "Профессии. Этикет");
			addChild(btnLess_4);
			btnLess_4.x = 570;
			btnLess_4.y = 10;
			btnLess_4.addEventListener(MouseEvent.CLICK, startLess_4);
			
			btnLess_5 = new LessonButton("Урок №5", "Прилагательные. Предлоги времени");
			addChild(btnLess_5);
			btnLess_5.x = 30;
			btnLess_5.y = 150;
			btnLess_5.addEventListener(MouseEvent.CLICK, startLess_5);
			
			btnLess_6 = new LessonButton("Урок №6", "Слова-параметры. Употребление much и many");
			addChild(btnLess_6);
			btnLess_6.x = 210;
			btnLess_6.y = 150;
			btnLess_6.addEventListener(MouseEvent.CLICK, startLess_6);
			
			btnLess_7 = new LessonButton("Урок №7", "Причастия");
			addChild(btnLess_7);
			btnLess_7.x = 390;
			btnLess_7.y = 150;
			btnLess_7.addEventListener(MouseEvent.CLICK, startLess_7);
			
			btnLess_8 = new LessonButton("Урок №8", "There is / There are");
			addChild(btnLess_8);
			btnLess_8.x = 570;
			btnLess_8.y = 150;
			btnLess_8.addEventListener(MouseEvent.CLICK, startLess_8);
			
			btnLess_9 = new LessonButton("Урок №9", "Предлоги");
			addChild(btnLess_9);
			btnLess_9.x = 30;
			btnLess_9.y = 290;
			btnLess_9.addEventListener(MouseEvent.CLICK, startLess_9);
			
			btnLess_10 = new LessonButton("Урок №10", "Фразовые глаголы");
			addChild(btnLess_10);
			btnLess_10.x = 210;
			btnLess_10.y = 290;
			btnLess_10.addEventListener(MouseEvent.CLICK, startLess_10);
			
			btnLess_11 = new LessonButton("Урок №11", "Модальные глаголы can, must");
			addChild(btnLess_11);
			btnLess_11.x = 390;
			btnLess_11.y = 290;
			btnLess_11.addEventListener(MouseEvent.CLICK, startLess_11);
			
			btnLess_12 = new LessonButton("Урок №12", "Continuous");
			addChild(btnLess_12);
			btnLess_12.x = 570;
			btnLess_12.y = 290;
			btnLess_12.addEventListener(MouseEvent.CLICK, startLess_12);
			
			btnLess_13 = new LessonButton("Урок №13", "Прилагательные. Описание людей. Погода");
			addChild(btnLess_13);
			btnLess_13.x = 30;
			btnLess_13.y = 430;
			btnLess_13.addEventListener(MouseEvent.CLICK, startLess_13);
			
			btnLess_14 = new LessonButton("Урок №14", "Present Perfect");
			addChild(btnLess_14);
			btnLess_14.x = 210;
			btnLess_14.y = 430;
			btnLess_14.addEventListener(MouseEvent.CLICK, startLess_14);
			
			btnLess_15 = new LessonButton("Урок №15", "Повелительное наклонение");
			addChild(btnLess_15);
			btnLess_15.x = 390;
			btnLess_15.y = 430;
			btnLess_15.addEventListener(MouseEvent.CLICK, startLess_15);
			
			btnLess_16 = new LessonButton("Урок №16", "Фразовые глаголы");
			addChild(btnLess_16);
			btnLess_16.x = 570;
			btnLess_16.y = 430;
			btnLess_16.addEventListener(MouseEvent.CLICK, startLess_16);
		}
		
		private function startLess_16(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(16);
			stateManager.changeState(StateManager.LESSON_16_STATE);
		}
		
		private function startLess_15(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(15);
			stateManager.changeState(StateManager.LESSON_15_STATE);
		}
		
		private function startLess_14(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(14);
			stateManager.changeState(StateManager.LESSON_14_STATE);
		}
		
		private function startLess_13(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(13);
			stateManager.changeState(StateManager.LESSON_13_STATE);
		}
		
		private function startLess_12(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(12);
			stateManager.changeState(StateManager.LESSON_12_STATE);
		}
		
		private function startLess_11(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(11);
			stateManager.changeState(StateManager.LESSON_11_STATE);
		}
		
		private function startLess_10(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(10);
			stateManager.changeState(StateManager.LESSON_10_STATE);
		}
		
		private function startLess_9(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(9);
			stateManager.changeState(StateManager.LESSON_9_STATE);
		}
		
		private function startLess_8(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(8);
			stateManager.changeState(StateManager.LESSON_8_STATE);
		}
		
		private function startLess_7(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(7);
			stateManager.changeState(StateManager.LESSON_7_STATE);
		}
		
		private function startLess_6(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(6);
			stateManager.changeState(StateManager.LESSON_6_STATE);
		}
		
		private function startLess_5(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(5);
			stateManager.changeState(StateManager.LESSON_5_STATE);
		}
		
		private function startLess_4(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(4);
			stateManager.changeState(StateManager.LESSON_4_STATE);
		}
		
		private function startLess_3(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(3);
			stateManager.changeState(StateManager.LESSON_3_STATE);
		}
		
		private function startLess_2(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(2);
			stateManager.changeState(StateManager.LESSON_2_STATE);
		}
		
		private function startLess_1(e:MouseEvent):void 
		{
			var sounds:SoundManager = SoundManager.getInstance();
			sounds.loadLesson(1);
			stateManager.changeState(StateManager.LESSON_1_STATE);
		}
		
		private function dontWork(e:MouseEvent):void 
		{
			stateManager.changeState(StateManager.DONT_WORK);
		}
		
	}

}