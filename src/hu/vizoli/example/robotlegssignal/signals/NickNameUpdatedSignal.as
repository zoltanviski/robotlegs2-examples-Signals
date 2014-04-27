package hu.vizoli.example.robotlegssignal.signals 
{
	import org.osflash.signals.Signal;
	
	/**
	 * NickNameUpdatedSignal
	 * 
	 * @author vizoli
	 */
	public class NickNameUpdatedSignal extends Signal 
	{
		
		public function NickNameUpdatedSignal( ) 
		{
			super( String );
		}
		
	}

}