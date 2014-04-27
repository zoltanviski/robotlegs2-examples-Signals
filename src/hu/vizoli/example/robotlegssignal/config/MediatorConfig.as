package hu.vizoli.example.robotlegssignal.config 
{
	import hu.vizoli.example.robotlegssignal.view.MainMediator;
	import hu.vizoli.example.robotlegssignal.view.NicknameDisplayMediator;
	import hu.vizoli.example.robotlegssignal.view.NicknameDisplayView;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Mediators config
	 * 
	 * @author vizoli
	 */
	public class MediatorConfig implements IConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		/**
		 * configure
		 */
		public function configure():void
		{
			this.mediatorMap.map( Main ).toMediator( MainMediator );
			this.mediatorMap.map( NicknameDisplayView ).toMediator( NicknameDisplayMediator );
		}
		
	}

}