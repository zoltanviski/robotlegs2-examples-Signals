package hu.vizoli.example.robotlegssignal.model 
{
	import hu.vizoli.example.robotlegssignal.base.BaseActor;
	import hu.vizoli.example.robotlegssignal.signals.NickNameUpdatedSignal;
	
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
		
		public function UserModel():void
		{
	
		}
		
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