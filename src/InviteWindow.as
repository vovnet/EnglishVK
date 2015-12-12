package  
{
	import fl.text.TLFTextField;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 */
	public class InviteWindow extends Sprite 
	{
		private var window:gr_invite_win = new gr_invite_win();
		private var button:gr_invite_btn;
		private var closeButton:gr_btn_close;
		private var stateManager:StateManager;
		private var txtField:TLFTextField;
		
		public function InviteWindow(_stateManager:StateManager) 
		{
			super();
			
			stateManager = _stateManager;
			
			window.x = -180;
			window.y = -60;
			addChild(window);
			button = window.getChildByName("invite_button") as gr_invite_btn;
			closeButton = window.getChildByName("close_btn") as gr_btn_close;
			txtField = window.getChildByName("tf") as TLFTextField;
			
			button.addEventListener(MouseEvent.CLICK, onClick);
			closeButton.addEventListener(MouseEvent.CLICK, onClose);
		}
		
		private function onClose(e:MouseEvent):void 
		{
			if (this.parent.contains(this))
			{
				this.parent.removeChild(this);
			}
			
		}
		
		private function onClick(e:MouseEvent):void 
		{
			navigateToURL(new URLRequest("http://vk.com/public55119351"));
			txtField.text = "Обновите страницу";
			
			
		}
		
	}

}