package hu.vizoli.example.robotlegssignal.base 
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	/**
	 * BaseActor
	 * 
	 * @author vizoli
	 */
	public class BaseActor
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		protected function dispatch( event:Event ):void
		{
			if ( this.eventDispatcher.hasEventListener( event.type ) )
				this.eventDispatcher.dispatchEvent( event );
		}
	}
}