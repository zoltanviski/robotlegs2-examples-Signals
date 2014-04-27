package hu.vizoli.example.robotlegssignal.config 
{
	import hu.vizoli.example.robotlegssignal.controller.command.InitApplicationCommand;
	import hu.vizoli.example.robotlegssignal.signals.ApplicationInitSignal;
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
		
		public function configure():void
		{
			this.commandMap.map( ApplicationInitSignal ).toCommand( InitApplicationCommand );
		}
		
	}

}