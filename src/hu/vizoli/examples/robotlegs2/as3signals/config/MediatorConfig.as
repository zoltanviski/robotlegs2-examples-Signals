package hu.vizoli.examples.robotlegs2.as3signals.config 
{
	import hu.vizoli.examples.robotlegs2.as3signals.view.MainMediator;
	import hu.vizoli.examples.robotlegs2.as3signals.view.NicknameDisplayMediator;
	import hu.vizoli.examples.robotlegs2.as3signals.view.NicknameDisplayView;
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
			this.mediatorMap.map( Main ).toMediator( MainMediator );
			this.mediatorMap.map( NicknameDisplayView ).toMediator( NicknameDisplayMediator );
		}
		
	}

}