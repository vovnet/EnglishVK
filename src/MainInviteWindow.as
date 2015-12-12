package  
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 */
	public class MainInviteWindow extends Sprite 
	{
		private var window:gr_inv = new gr_inv();
		private var closeButton:SimpleButton;
		private var inviteButton:SimpleButton;
		
		private var tField:TextField = new TextField();
		private var tFormat:TextFormat = new TextFormat();
		
		public function MainInviteWindow() 
		{
			super();
			
			addChild(window);
			
			closeButton = window.getChildByName("btn_close") as SimpleButton;
			closeButton.addEventListener(MouseEvent.CLICK, onClickClose);
			inviteButton = window.getChildByName("btn_invite") as SimpleButton;
			inviteButton.addEventListener(MouseEvent.CLICK, onClickInvite);
			
			tFormat.font = "Arial";
			tFormat.size = 24;
			tFormat.color = 0xffffff;
			tFormat.align = 'center';
			
			tField.defaultTextFormat = tFormat;
			tField.multiline = true;
			tField.wordWrap = true;
			tField.selectable = false;
			tField.width = 540;
			tField.height = 200;
			tField.x = 120;
			tField.y = 170;
			tField.text = "Спасибо за Ваш выбор!\n\n";
			tField.appendText("Только для подписчиков паблика \n\"Убойный Инглиш\" доступна озвучка уроков.\n\n");
			tField.appendText("Подписывайся, у нас весело :)");
			window.addChild(tField);
		}
		
		private function onClickInvite(e:MouseEvent):void 
		{
			navigateToURL(new URLRequest("http://vk.com/public55119351"));
			tField.text = "\n\n\nПожалуйста, обновите страницу...";
		}
		
		private function onClickClose(e:MouseEvent):void 
		{
			if (parent.contains(this))
			{
				parent.removeChild(this);
			}
		}
		
	}

}