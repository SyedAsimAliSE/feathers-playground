package ; #if !flash


import openfl._internal.formats.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;


class ListHeaderBase extends openfl.display.MovieClip {


	

	public function new () {

		super ();

		/*
		if (!SWFLite.instances.exists ("K9hvhgbZcNhqoEildtvt")) {

			SWFLite.instances.set ("K9hvhgbZcNhqoEildtvt", SWFLite.unserialize (Assets.getText ("K9hvhgbZcNhqoEildtvt")));

		}
		*/

		var swfLite = SWFLite.instances.get ("K9hvhgbZcNhqoEildtvt");
		var symbol = swfLite.symbols.get (25);

		__fromSymbol (swfLite, cast symbol);

	}


}


#else
@:bind @:native("ListHeaderBase") class ListHeaderBase extends openfl.display.MovieClip {


	

	public function new () {

		super ();

	}


}
#end