package hu.vizoli.example.robotlegssignal.base 
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