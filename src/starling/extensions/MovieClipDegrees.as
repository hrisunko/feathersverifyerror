package starling.extensions 
{
	import starling.utils.*
	import starling.display.MovieClip;
	import starling.textures.Texture;
	
	public class MovieClipDegrees extends MovieClip 
	{
		public function MovieClipDegrees(textures:Vector.<Texture>, fps:Number = 12) : void
		{
			super(textures, fps);
		}
		
		override public function set rotation(value:Number):void
		{
			super.rotation = deg2rad(value);
		}
		
	}

}