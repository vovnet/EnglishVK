package  
{
	import com.demonsters.debugger.MonsterDebugger;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.system.Security;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 */
	public class PreloaderAds extends MovieClip 
	{
		private var flashVars:Object;
        private var loader:flash.display.Loader;
        private var vkContainer:Object;

        public function PreloaderAds(flashVars:Object)
        {
            super();
			this.flashVars = flashVars;
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
            new URLLoader().load(new URLRequest("//js.appscentrum.com/s?app_id=3017300&user_id=" + flashVars['viewer_id']));
			
			addEventListener(Event.ADDED_TO_STAGE, initAd);
        }
		
		private function initAd(e:Event=null):void
        {
			MonsterDebugger.log('userId' + flashVars['viewer_id']);
			MonsterDebugger.log('Добавил на сцену');
            removeEventListener(Event.ADDED_TO_STAGE, initAd);

            loader = new flash.display.Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadComplete);

            var context:LoaderContext = new LoaderContext(false, new ApplicationDomain());
            var adrequest:URLRequest = new URLRequest("//ad.mail.ru/static/vkcontainer.swf");
            var requestParams : URLVariables = new URLVariables();
            requestParams['preview'] = '8';
            adrequest.data = requestParams;

            loader.load(adrequest, context);
        }
		
		private function onLoadComplete(e:Event):void
        {
			MonsterDebugger.log('Загрузил рекламу');
            vkContainer = loader.content;
            addChild(vkContainer as DisplayObject);
            onResize();

            vkContainer.addEventListener("adReady", onAdReady);
            vkContainer.addEventListener("adLoadFailed", onAdLoadFailed);
            vkContainer.addEventListener("adError", onAdError);
            vkContainer.addEventListener("adInitFailed", onAdInitFailed);
            vkContainer.addEventListener("adStarted", onAdStarted);
            vkContainer.addEventListener("adStopped", onAdStopped);
            vkContainer.addEventListener("adPaused", onAdPaused);
            vkContainer.addEventListener("adResumed", onAdResumed);
            vkContainer.addEventListener("adCompleted", onAdCompleted);
            vkContainer.addEventListener("adClicked", onAdClicked);

            vkContainer.addEventListener("adBannerStarted", onAdBannerStarted);
            vkContainer.addEventListener("adBannerStopped", onAdBannerStopped);
            vkContainer.addEventListener("adBannerCompleted", onAdBannerCompleted);

            vkContainer.init("3017300", stage);
			MonsterDebugger.log('Сделал init()');
        }
		
		private function onResize(e:Event=null):void
        {
            if (vkContainer)
            {
                vkContainer.setSize(stage.stageWidth, stage.stageHeight);
				MonsterDebugger.log('Resize()');
            }

        }
		
		private function onAdReady(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Ready");
        }

        private function onAdLoadFailed(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Load Failed");
        }

        private function onAdError(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Error");
        }

        private function onAdInitFailed(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Init Failed");
        }

        private function onAdStarted(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Started");
        }

        private function onAdStopped(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Stopped");
        }

        private function onAdPaused(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Paused");
        }

        private function onAdResumed(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Resumed");
        }

        private function onAdCompleted(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Completed");
        }

        private function onAdClicked(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Clicked");
        }

        private function onAdBannerStarted(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Banner Started");
        }

        private function onAdBannerStopped(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Banner Stopped");
        }

        private function onAdBannerCompleted(e:Event):void
        {
            MonsterDebugger.log("Adman: Ad Banner Completed");
        }

        
	}

}