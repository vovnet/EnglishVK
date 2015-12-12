package  
{
	import com.demonsters.debugger.MonsterDebugger;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.system.Security;
	
	/**
	 * ...
	 * @author Vladimir Saykovsky
	 * 
	 * Синглтон, управляет звуками приложения.
	 * Загружает swf со звуками, а так же воспроизводит звуки.
	 */
	public class SoundManager 
	{
		// звук выключен
		public var isMute:Boolean = false; 
		
		// все пути к swf'кам
		public var pathSounds:Object = new Object();
		
		// звуки для всех уроков
		public var sounds:Object = new Object();
		
		// массив хранящий метки, указывающие загружен ли тот или иной урок
		public var isLoadLesson:Array = new Array(16);
		
		private var loader:Loader;
		
		// какой урок сейчас грузим
		private var numLesson:int;
		
		private static var _instance:SoundManager;

		
		public static function getInstance():SoundManager
		{
			if (!_instance)
			{
				new SoundManager();
			} 
			return _instance;
		}
		
		public function SoundManager() 
		{
			if(_instance){
				throw new Error("Singleton... use getInstance()");
			} 
			_instance = this;
			
			pathSounds["1"] = "http://app.vk.com/c420624/u11909728/3183394dfa558c.swf";
			pathSounds["2"] = "http://app.vk.com/c420624/u11909728/8b05c0fa6d50f6.swf";
			pathSounds["3"] = "http://app.vk.com/c420624/u11909728/b0d7ad8d0d98f8.swf";
			pathSounds["4"] = "http://app.vk.com/c420624/u11909728/30f55b5830aef1.swf";
			pathSounds["5"] = "http://app.vk.com/c420624/u11909728/ed13fa7945afd4.swf";
			pathSounds["6"] = "http://app.vk.com/c420624/u11909728/267cf2774a4a84.swf";
			pathSounds["7"] = "http://app.vk.com/c420624/u11909728/4418e33f2b6347.swf";
			pathSounds["8"] = "http://app.vk.com/c420624/u11909728/9b35bf67c535b0.swf";
			pathSounds["9"] = "http://app.vk.com/c420624/u11909728/5f7bd247c58d96.swf";
			pathSounds["10"] = "http://app.vk.com/c420624/u11909728/6a504ce046002b.swf";
			pathSounds["11"] = "http://app.vk.com/c420624/u11909728/59821a24b09a8d.swf";
			pathSounds["12"] = "http://app.vk.com/c420624/u11909728/e14fc0ab87e6ee.swf";
			pathSounds["13"] = "http://app.vk.com/c420624/u11909728/4da1990612165e.swf";
			pathSounds["14"] = "http://app.vk.com/c420624/u11909728/1ee4af3cba2086.swf";
			pathSounds["15"] = "http://app.vk.com/c420624/u11909728/b3f8952bfa6f08.swf";
			pathSounds["16"] = "http://app.vk.com/c420624/u11909728/a278ba9053fc01.swf";
			
			// обнуляем массив меток указывающих загружен ли определенный урок
			for (var i:int = 0; i < isLoadLesson.length; i++)
			{
				isLoadLesson[i] = false;
			}
			
		}
		
		// загружает swf к указанному уроку
		public function loadLesson(_numLesson:int):void
		{
			this.numLesson = _numLesson;
			
			// если звуки для этого урока уже были загружены, то выходим...
			if (isLoadLesson[numLesson - 1]) return;
			
			// загружаем звуки
			trace('загружаем');
			loader = new Loader();
			loader.load(new URLRequest(pathSounds[numLesson.toString()]));
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onError);
		}
		
		// звук удачно загрузился
		private function onComplete(e:Event):void 
		{
			isLoadLesson[numLesson - 1] = true; // помечаем, что этот урок загружен
			sounds[numLesson.toString()] = Class(loader.contentLoaderInfo.applicationDomain.getDefinition("SoundLesson" + numLesson.toString()));
			trace("загрузка завершена");
			MonsterDebugger.log(this);
		}
		
		// ошибка загрузки звука
		private function onError(e:IOErrorEvent):void 
		{
			trace("Ошибка загрузки звука для урока " + numLesson.toString());
			MonsterDebugger.log(e);
		}
		
		// проигрывает указанный звук
		public function play(numLesson:int, nameSound:String):void
		{
			// если юзер не подписан на паблик, выходим
			if (!Main.isGroupMember) return;
			
			// если звук отключен, выходим...
			if (isMute) return;
			
			// если такой урок не был загружен
			if (!isLoadLesson[numLesson-1]) return;
			
			// проигрываем звук
			var s:Sound = Sound(sounds[numLesson.toString()][nameSound]);
			if (s != null)
			{
				trace('проигрываем...');
				s.play();
			}
		}
		
		public function containsLesson(nameLesson:String):Boolean
		{
			if (sounds[nameLesson] != null) return true;
			return false;
		}
		
	}

}