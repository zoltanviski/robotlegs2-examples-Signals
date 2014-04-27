package hu.vizoli.examples.robotlegs2.as3signals.view 
{
	import flash.text.TextField;
	import hu.vizoli.examples.robotlegs2.as3signals.base.BaseView;
	
	/**
	 * NicknameDisplayView
	 * 
	 * @author vizoli
	 */
	public class NicknameDisplayView extends BaseView
	{
		private var _nicknameText:TextField;
		
		public function NicknameDisplayView() 
		{
			this._nicknameText = new TextField();
			
			this.createChildren();
		}
		
		/**
		 * Create children
		 */
		override public function createChildren():void
		{
			this.addChild( this._nicknameText );
		}
		
		/**
		 * Update the nickname
		 * 
		 * @param	nickname
		 */
		public function update( nickname:String ):void 
		{
			this._nicknameText.text = nickname;
		}
		
	}

}