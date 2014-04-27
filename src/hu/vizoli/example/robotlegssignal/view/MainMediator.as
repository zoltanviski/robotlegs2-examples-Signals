package hu.vizoli.example.robotlegssignal.view 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.example.robotlegssignal.signals.ApplicationInitSignal;
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
		
		/**
		 * Override the initialize
		 */
		override public function initialize():void
		{
			
		}
		
	}

}