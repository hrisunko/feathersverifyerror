package starling.extensions.krecha
{
	import flash.geom.Point;
	import starling.display.DisplayObject;
	import starling.display.MovieClip;
	import starling.textures.SubTexture;
	import starling.textures.Texture;
  
	/**
	 * Create Image object with pixel perfect touch.
	 * @author KrechaGames - Łukasz 'Cywil' Cywiński
	 */
	public class PixelMovieClipTouch extends MovieClip
	{
		private var _hitArea:PixelHitArea;
		private var threshold:uint;

		public function PixelMovieClipTouch ( textures:Vector.<Texture>, fps:Number=12, hitArea:PixelHitArea=null, threshold:uint = 0xFF )
		{
			super ( textures, fps );				
			this.hitArea = hitArea;				
			this.threshold = threshold;
		}

		override public function hitTest(localPoint:Point, forTouch:Boolean = false):DisplayObject 
		{				
			if (getBounds(this).containsPoint(localPoint) && hitArea && !hitArea.disposed )
            {
				return hitArea.getAlphaPixel ( localPoint.x + hitArea.width * SubTexture (texture).clipping.x, localPoint.y + hitArea.height *  SubTexture (texture).clipping.y ) >= threshold ? this : null;	
            } else {				
				return super.hitTest ( localPoint, forTouch );
			} 			
		}	

		override public function dispose():void 
		{
			if ( hitArea && hitArea.disposed ) hitArea = null;
			super.dispose();
		}

		public function get hitArea():PixelHitArea 
		{
			return _hitArea;
		}

		public function set hitArea(value:PixelHitArea):void 
		{
			_hitArea = value;
		}
	}
 
}