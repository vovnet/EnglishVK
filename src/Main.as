package 
{
	import com.demonsters.debugger.MonsterDebugger;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.system.Security;
	import flash.text.TextField;
	import vk.APIConnection;
	import vk.events.*;
	import vk.ui.VKButton;
	
	/**
	 * ...
	 * @author Vladimir
	 * 
	 * 
	 */
	public class Main extends Sprite 
	{
		private var stateManager:StateManager;
		private var VKApi:APIConnection;
		
		// подписан ли юзер на паблик
		public static var isGroupMember:Boolean = false;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			
			stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
            stage.showDefaultContextMenu = false;
            stage.align = flash.display.StageAlign.TOP_LEFT;
			
			var flashVars: Object = stage.loaderInfo.parameters as Object;
			VKApi = new APIConnection(flashVars);
			VKApi.api("groups.isMember", { group_id:"55119351" }, onComplete, onError);
			
			// init debug
			MonsterDebugger.initialize(this);
			//MonsterDebugger.log(flashVars);
			
			// менеджер окон
			stateManager = new StateManager();
			stateManager.changeState(StateManager.MAIN_MENU_STATE);
			addChild(stateManager);
			stateManager.y = 114;
			
			// медиа реклама
			/*var mAds:PreloaderAds = new PreloaderAds(flashVars);
			addChild(mAds);
			*/
			// контекстная реклама
			var ad:Ads = new Ads(flashVars);
			addChild(ad);
			
		}
		
		private function onComplete(data:Object):void 
		{
			isGroupMember = Boolean(data);
			if (!isGroupMember) showInviteWindow();
		}
		
		private function onError(data:Object):void 
		{
			if (!isGroupMember) showInviteWindow();
		}
		
		private function showInviteWindow():void 
		{
			var a:MainInviteWindow = new MainInviteWindow();
			addChild(a);
		}
		
		
		
		
	}
	
}