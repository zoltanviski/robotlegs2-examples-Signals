package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.examples.robotlegs2.as3signals.config.CommandConfig;
	import hu.vizoli.examples.robotlegs2.as3signals.config.MediatorConfig;
	import hu.vizoli.examples.robotlegs2.as3signals.config.ModelConfig;
	import hu.vizoli.examples.robotlegs2.as3signals.view.NicknameDisplayView;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.signalCommandMap.impl.SignalCommandMap;
	import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * Signals in Robotlegs
	 * 
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		private var _context:IContext;
		private var _nickNameDisplayView:NicknameDisplayView;
		
		public function Main( ):void 
		{
			this.setupContext();
			
			if ( this.stage ) this.init();
			else this.addEventListener(  Event.ADDED_TO_STAGE, this.init );
		}
		
		/**
		 * Init
		 * 
		 * @param	e
		 */
		private function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
			
			this._nickNameDisplayView = new NicknameDisplayView();
			
			this.createChildren();
		}
		
		/**
		 * Setup the context
		 */
		private function setupContext( ):void 
		{
			this._context = new Context()
				.install( 	MVCSBundle, SignalCommandMapExtension )
				.configure( ModelConfig, 
							MediatorConfig, 
							CommandConfig, 
							new ContextView( this ) 
						  );
		}
		
		/**
		 * Create the children
		 */
		public function createChildren():void
		{
			this.addChild( this._nickNameDisplayView );
		}
		
	}
	
}