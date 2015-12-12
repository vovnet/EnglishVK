package  
{
	import com.demonsters.debugger.MonsterDebugger;
	import com.vk.MainVKBanner;
	import com.vk.MainVKBannerEvent;
	import com.vk.vo.BannersPanelVO;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.system.SecurityDomain;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 * Реклама
	 */
	public class Ads extends Sprite 
	{
		private var flashVars:Object;
		private var blocks:Array = ["62170", "62514", "62515"];
		
		public function Ads(flashVars:Object) 
		{
			super();
			
			this.flashVars = flashVars;
			
			graphics.beginFill(0x0C0C0C);
			graphics.drawRect(0, 0, 800, 114);
			graphics.endFill();
			
			
			var loader:Loader = new Loader();
			var context:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
			context.securityDomain = SecurityDomain.currentDomain;
			loader.load(new URLRequest('//api.vk.com/swf/vk_ads.swf'), context);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loader_onLoadComplete);
			
			
		}
		
		private function loader_onLoadComplete(e:Event):void 
		{
			var panels:BannersPanelVO = new BannersPanelVO();
			panels.ads_count = 3;
			panels.ad_height = 80;
			panels.lines_color = "#000000";
			panels.ad_type = BannersPanelVO.AD_TYPE_HORIZONTAL;
			panels.ad_unit_width = 200;
			panels.ad_unit_type = BannersPanelVO.AD_UNIT_TYPE_HORIZONTAL;
			panels.desc_color = "#ffffff";
			panels.title_color = "#ef506a";
			
			var banner:MainVKBanner = new MainVKBanner("62170");
			banner.initBanner(flashVars, panels);
			addChild(banner);
			
			banner.addEventListener(MainVKBannerEvent.LOAD_COMPLETE, onLoadComplete);
			banner.addEventListener(MainVKBannerEvent.LOAD_IS_EMPTY, onEmpty);
			banner.addEventListener(MainVKBannerEvent.LOAD_ERROR, onError);
			
			//MonsterDebugger.log("done!!");
			//MonsterDebugger.log(banner);
		}
		
		private function onError(e:Event):void 
		{
			//MonsterDebugger.log('error');
		}
		
		private function onEmpty(e:Event):void 
		{
			//MonsterDebugger.log('empty');
		}
		
		private function onLoadComplete(e:Event):void 
		{
			//MonsterDebugger.log('complete');
		}
		
	}

}