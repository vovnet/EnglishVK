package  
{
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Vladimir
	 */
	public class DontWork extends gr_do_not_work 
	{
		private var back:gr_back;
		private var stateManager:StateManager;
		
		public function DontWork(manager:StateManager) 
		{
			stateManager = manager;
			back = getChildByName("btn_back") as gr_back;
			back.addEventListener(MouseEvent.CLICK, BackHandler);
			this.x = 400;
			this.y = 250;
		}
		
		private function BackHandler(e:MouseEvent):void 
		{
			stateManager.changeState(StateManager.MAIN_MENU_STATE);
		}
		
	}

}