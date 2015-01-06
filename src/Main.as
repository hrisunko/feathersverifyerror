package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import starling.core.Starling;
	import starling.events.Event;

	[SWF(width="768", height="576", backgroundColor="0xFFFFFF", frameRate = "60")]
	public class Main extends Sprite 
	{
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(flash.events.Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:flash.events.Event = null):void 
		{
			removeEventListener(flash.events.Event.ADDED_TO_STAGE, init);
		
			var starling:Starling = new Starling(App, stage, null, null, "auto", "auto");
			starling.addEventListener(starling.events.Event.ROOT_CREATED, function onRootCreated(e:starling.events.Event, app:App) : void
			{
				starling.start();
				app.start();
			});
		}
	}
}