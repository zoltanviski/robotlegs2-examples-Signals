package hu.vizoli.examples.robotlegs2.as3signals.config 
{
	import hu.vizoli.examples.robotlegs2.as3signals.model.UserModel;
	import hu.vizoli.examples.robotlegs2.as3signals.signals.NickNameUpdatedSignal;
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
			this.injector.map( UserModel ).asSingleton();
			this.injector.map( NickNameUpdatedSignal ).asSingleton();
		}
		
	}

}