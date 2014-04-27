package hu.vizoli.examples.robotlegs2.as3signals.controller.command 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.as3signals.base.BaseCommand;
	import hu.vizoli.examples.robotlegs2.as3signals.model.UserModel;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	
	/**
	 * InitApplicationCommand
	 * 
	 * @author vizoli
	 */
	public class InitApplicationCommand extends BaseCommand
	{
		[Inject]
		public var userModel:UserModel;
		
		/**
		 * Override the execute
		 */
		override public function execute():void
		{
			this.userModel.nickname = "Test elek";
		}

	}
	
}