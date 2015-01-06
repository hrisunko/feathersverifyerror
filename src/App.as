package  
{
	import feathers.controls.ScrollContainer;
	import starling.display.Sprite;
	
	public class App extends Sprite 
	{
		public function start() : void
		{
			var scrollContainer:ScrollContainer = new ScrollContainer;
			addChild(scrollContainer);
		}
	}
}