package hu.vizoli.examples.robotlegs2.as3signals.base 
{
	import flash.events.IEventDispatcher;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * BaseCommand
	 * 
	 * @author vizoli
	 */
	public class BaseCommand extends Command
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		public function BaseCommand() 
		{
			super();
		}
		
	}

}