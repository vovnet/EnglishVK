package  
{
	import adobe.utils.CustomActions;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Vladimir
	 */
	public class WorkBook extends Sprite 
	{
		private var sheet:gr_list = new gr_list();
		private var close:gr_btn_close;
		private var document:Sprite;
		private var scrollBar:Sprite;
		private var scroller:Sprite;
		
		public function WorkBook(doc:Sprite) 
		{
			document = doc;
			addChild(sheet);
			sheet.addChild(doc);
			close = sheet.getChildByName("btn_close_work_book") as gr_btn_close;
			close.addEventListener(MouseEvent.CLICK, CloseHandler);
			this.visible = false;
			
			document.mask = sheet.getChildByName("masker") as Sprite;
			document.scrollRect = new Rectangle(0, 0, 700, document.height + 100);
			document.cacheAsBitmap = true;
			
			scrollBar = sheet.getChildByName("scrollBar") as Sprite;
			scroller = scrollBar.getChildByName("scroller") as Sprite;
			
			if (document.mask.height >= document.height)
			{
				scrollBar.visible = false;
			}
			else
			{
				scroller.addEventListener(MouseEvent.MOUSE_DOWN, ScrollerDownHandler);
				scroller.addEventListener(MouseEvent.MOUSE_UP, ScrollerUpHandler);
				scroller.addEventListener(MouseEvent.MOUSE_OUT, ScrollerOutHandler);
			}
		}
		
		private function ScrollerOutHandler(e:MouseEvent):void 
		{
			scroller.removeEventListener(MouseEvent.MOUSE_MOVE, ScrollerMoveHandler);
			scroller.stopDrag();
		}
		
		private function ScrollerUpHandler(e:MouseEvent):void 
		{
			scroller.removeEventListener(MouseEvent.MOUSE_MOVE, ScrollerMoveHandler);
			scroller.stopDrag();
		}
		
		private function ScrollerDownHandler(e:MouseEvent):void 
		{
			scroller.addEventListener(MouseEvent.MOUSE_MOVE, ScrollerMoveHandler);
			var dragRect:Rectangle = new Rectangle(0, 0, 0, scrollBar.height - scroller.height);
			scroller.startDrag(false, dragRect);
		}
		
		private function ScrollerMoveHandler(e:MouseEvent):void 
		{
			var rect:Rectangle = document.scrollRect;
			var percent:Number = scroller.y / (scrollBar.height - scroller.height) * (rect.height - document.mask.height);
			rect.y = percent;
			document.scrollRect = rect;
		}
		
		
		
		private function CloseHandler(e:MouseEvent):void 
		{
			this.visible = false;
		}
		
	}

}