package hu.vizoli.example.robotlegssignal.controller.command 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.example.robotlegssignal.base.BaseCommand;
	import hu.vizoli.example.robotlegssignal.model.UserModel;
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