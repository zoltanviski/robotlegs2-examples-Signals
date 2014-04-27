package hu.vizoli.example.robotlegssignal.view 
{
	import hu.vizoli.example.robotlegssignal.signals.ApplicationInitSignal;
	import hu.vizoli.example.robotlegssignal.signals.NickNameUpdatedSignal;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * NicknameDisplay mediator
	 * 
	 * @author vizoli
	 */
	public class NicknameDisplayMediator extends Mediator 
	{
		[Inject]
		public var view:NicknameDisplayView;
		
		[Inject]
		public var applicationInitSignal:ApplicationInitSignal;
		
		[Inject]
		public var nickNameUpdatedSignal:NickNameUpdatedSignal;
		
		/**
		 * Override the initialize
		 */
		override public function initialize():void
		{
			this.nickNameUpdatedSignal.add( this.nickNameUpdatedSignalHandler );
			
			this.applicationInitSignal.dispatch();
		}
		
		/**
		 * NickNameUpdatedSignal Handler
		 * 
		 * @param	nickname
		 */
		private function nickNameUpdatedSignalHandler( nickname:String = "" ):void
		{
			this.view.update( nickname );
		}
		
	}

}