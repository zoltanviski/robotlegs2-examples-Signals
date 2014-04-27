package hu.vizoli.example.robotlegssignal.base
{
	import flash.display.Sprite;
	import hu.vizoli.example.robotlegssignal.base.interfaces.IBaseView;
	
	/**
	 * BaseView
	 * 
	 * @author vizoli
	 */
	public class BaseView extends Sprite implements IBaseView
	{
		
		public function BaseView() 
		{
			super();
		}
		
		/**
		 * Create the children
		 */
		public function createChildren():void
		{
			
		}
		
	}

}