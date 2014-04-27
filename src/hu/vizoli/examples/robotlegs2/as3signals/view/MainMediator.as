package hu.vizoli.examples.robotlegs2.as3signals.view 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.as3signals.signals.ApplicationInitSignal;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * MainMediator
	 * 
	 * @author vizoli
	 */
	public class MainMediator extends Mediator 
	{
		[Inject]
		public var view:Main;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void
		{
			
		}
		
	}

}