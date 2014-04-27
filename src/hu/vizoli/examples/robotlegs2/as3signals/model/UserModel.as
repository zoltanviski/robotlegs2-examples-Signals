package hu.vizoli.examples.robotlegs2.as3signals.model
{
	import hu.vizoli.examples.robotlegs2.as3signals.base.BaseActor;
	import hu.vizoli.examples.robotlegs2.as3signals.signals.NickNameUpdatedSignal;
	
	/**
	 * UserModel
	 * 
	 * @author vizoli
	 */
	public class UserModel extends BaseActor 
	{
		[Inject]
		public var nickNameUpdatedSignal:NickNameUpdatedSignal;

		private var _nickname:String;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * UserModel
		 */
		public function UserModel():void
		{
	
		}
		
		//--------------------------------------------------------------------------
		//
		//  Getters / Setters
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Reaturns the nickname
		 */
		public function get nickname():String { return this._nickname; }
		
		/**
		 * @private
		 */
		public function set nickname( value:String ):void 
		{
			this._nickname = value; 
			
			this.nickNameUpdatedSignal.dispatch( value );
		}
		
	}

}