package hu.vizoli.example.robotlegssignal.config 
{
	import hu.vizoli.example.robotlegssignal.model.UserModel;
	import hu.vizoli.example.robotlegssignal.signals.NickNameUpdatedSignal;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Models config
	 * 
	 * @author vizoli
	 */
	public class ModelConfig implements IConfig
	{
		[Inject]
		public var injector:IInjector;
		
		/**
		 * configure
		 */
		public function configure():void
		{
			this.injector.map( UserModel ).asSingleton();
			this.injector.map( NickNameUpdatedSignal ).asSingleton();
		}
		
	}

}