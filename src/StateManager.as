package  
{
	import flash.display.Sprite;
	import com.greensock.*;
	/**
	 * ...
	 * @author Vladimir
	 */
	public class StateManager extends Sprite
	{
		public static const DONT_WORK:int = 0;
		public static const MAIN_MENU_STATE:int = 1;
		public static const LESSON_1_STATE:int = 2;
		public static const LESSON_2_STATE:int = 3;
		public static const LESSON_3_STATE:int = 4;
		public static const LESSON_4_STATE:int = 5;
		public static const LESSON_5_STATE:int = 6;
		public static const LESSON_6_STATE:int = 7;
		public static const LESSON_7_STATE:int = 8;
		public static const LESSON_8_STATE:int = 9;
		public static const LESSON_9_STATE:int = 10;
		public static const LESSON_10_STATE:int = 11;
		public static const LESSON_11_STATE:int = 12;
		public static const LESSON_12_STATE:int = 13;
		public static const LESSON_13_STATE:int = 14;
		public static const LESSON_14_STATE:int = 15;
		public static const LESSON_15_STATE:int = 16;
		public static const LESSON_16_STATE:int = 17;
		
		private var currentState:Sprite = new Sprite();
		private var sprite:Sprite = new Sprite();
		
		public function StateManager() 
		{
			addChild(sprite);
		}
		
		public function changeState(newState:int):void
		{
			if (sprite.contains(currentState))
			{
				sprite.removeChild(currentState);
			}
			
			switch (newState)
			{
				case DONT_WORK:
					//currentState = new DontWork(this);
					//sprite.addChild(currentState);
					ChangePage(DontWork);
					break;
				case MAIN_MENU_STATE:
					ChangePage(MainMenu);
					break;
				case LESSON_1_STATE:
					ChangePage(PageLesson_1);
					break;
				case LESSON_2_STATE:
					ChangePage(PageLesson_2);
					break;
				case LESSON_3_STATE:
					ChangePage(PageLesson_3);
					break;
				case LESSON_4_STATE:
					ChangePage(PageLesson_4);
					break;
				case LESSON_5_STATE:
					ChangePage(PageLesson_5);
					break;
				case LESSON_6_STATE:
					ChangePage(PageLesson_6);
					break;
				case LESSON_7_STATE:
					ChangePage(PageLesson_7);
					break;
				case LESSON_8_STATE:
					ChangePage(PageLesson_8);
					break;
				case LESSON_9_STATE:
					ChangePage(PageLesson_9);
					break;
				case LESSON_10_STATE:
					ChangePage(PageLesson_10);
					break;
				case LESSON_11_STATE:
					ChangePage(PageLesson_11);
					break;
				case LESSON_12_STATE:
					ChangePage(PageLesson_12);
					break;
				case LESSON_13_STATE:
					ChangePage(PageLesson_13);
					break;
				case LESSON_14_STATE:
					ChangePage(PageLesson_14);
					break;
				case LESSON_15_STATE:
					ChangePage(PageLesson_15);
					break;
				case LESSON_16_STATE:
					ChangePage(PageLesson_16);
					break;
			}
		}
		
		private function ChangePage(page:Class):void
		{
			currentState = new page(this) as Sprite;
			sprite.addChild(currentState);
		}
		
	}

}