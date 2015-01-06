package starling.extensions 
{
	import starling.display.MovieClip;
	import starling.utils.*
	import starling.display.Sprite;
	
	public class SpriteDegrees extends Sprite 
	{
		public function SpriteDegrees() : void
		{
			super();
		}
		
		override public function set rotation(value:Number):void
		{
			super.rotation = deg2rad(value);
		}
		
		override public function get rotation():Number
		{
			return rad2deg(super.rotation);
		}
		
		public function play() : void
		{
			for (var i:int = 0; i < numChildren; i++)
				if (getChildAt(i) is MovieClip)
					(getChildAt(i) as MovieClip).play();
		}
		
	}

}