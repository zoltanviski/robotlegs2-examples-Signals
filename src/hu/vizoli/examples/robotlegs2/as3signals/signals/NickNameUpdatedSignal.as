package hu.vizoli.examples.robotlegs2.as3signals.signals 
{
	import org.osflash.signals.Signal;
	
	/**
	 * NickNameUpdatedSignal
	 * 
	 * @author vizoli
	 */
	public class NickNameUpdatedSignal extends Signal 
	{
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * NickNameUpdatedSignal
		 */
		public function NickNameUpdatedSignal( ) 
		{
			super( String );
		}
		
	}

}