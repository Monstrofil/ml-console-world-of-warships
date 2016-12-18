package
{
    import com.junkbyte.console.Cc;
	import flash.display.Sprite;
	import flash.events.Event;
    import lesta.api.ModBase;
	
	/**
	 * ...
	 * @author Monstrofil
	 */
	public class Main extends ModBase 
	{
		
		public function Main() 
		{
            
		}
		
		public override function init():void {
            Cc.startOnStage(this);
        }
        
        public override function fini():void {
            Cc.remove();
        }
		
	}
	
}