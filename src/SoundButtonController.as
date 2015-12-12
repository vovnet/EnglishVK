package  
{
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flashx.textLayout.elements.BackgroundManager;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 */
	public class SoundButtonController extends Sprite 
	{
		private var soundManager:SoundManager;
		
		private var soundOnButton:gr_sound_on = new gr_sound_on();
		private var soundOffButton:gr_sound_off = new gr_sound_off();
		private var soundMuteButton:gr_sound_off = new gr_sound_off();
		
		private var stateManager:StateManager;
		
		public function SoundButtonController(_stateManager:StateManager) 
		{
			super();
			
			stateManager = _stateManager;
			soundManager = SoundManager.getInstance();
			
			if (!Main.isGroupMember)
			{
				addChild(soundOffButton);
				soundOffButton.addEventListener(MouseEvent.CLICK, onClickSoundOff);
			} else {
				
				addChild(soundMuteButton);
				soundMuteButton.addEventListener(MouseEvent.CLICK, onClickSoundMute);
				
				addChild(soundOnButton);
				soundOnButton.addEventListener(MouseEvent.CLICK, onClickSoundOn);
				
				if (soundManager.isMute) {
					soundOnButton.visible = false;
					soundMuteButton.visible = true;
				}
			}
		}
		
		private function onClickSoundMute(e:MouseEvent):void 
		{
			soundOn();
		}
		
		private function onClickSoundOff(e:MouseEvent):void 
		{
			// предлагаем вступить в паблик
			this.parent.setChildIndex(this, this.parent.numChildren - 1); // на передний план
			var a:InviteWindow = new InviteWindow(stateManager);
			addChild(a);
		}
		
		private function onClickSoundOn(e:MouseEvent):void 
		{
			soundOff();
		}
		
		public function soundOn():void {
			soundManager.isMute = false;
			
			// change button view
			soundOnButton.visible = true;
			soundMuteButton.visible = false;
		}
		
		public function soundOff():void {
			soundManager.isMute = true;
			
			// change button view
			soundOnButton.visible = false;
			soundMuteButton.visible = true;
		}
		
	}

}