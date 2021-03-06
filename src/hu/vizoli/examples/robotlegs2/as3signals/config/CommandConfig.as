package hu.vizoli.examples.robotlegs2.as3signals.config
{
	import hu.vizoli.examples.robotlegs2.as3signals.controller.command.InitApplicationCommand;
	import hu.vizoli.examples.robotlegs2.as3signals.signals.ApplicationInitSignal;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	
	/**
	 * CommandConfig
	 * 
	 * @author vizoli
	 */
	public class CommandConfig implements IConfig 
	{
		[Inject]
		public var commandMap:ISignalCommandMap;
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Configure
		 */
		public function configure():void
		{
			this.commandMap.map( ApplicationInitSignal ).toCommand( InitApplicationCommand );
		}
		
	}

}