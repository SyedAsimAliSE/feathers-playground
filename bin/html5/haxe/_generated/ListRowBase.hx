package ; #if !flash


import openfl._internal.formats.swf.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;


class ListRowBase extends openfl.display.MovieClip {


	@:keep public var bg (default, null):openfl.display.MovieClip;
	@:keep public var txtAId (default, null):openfl.text.TextField;
	@:keep public var txtCId (default, null):openfl.text.TextField;
	@:keep public var btnDetails (default, null):openfl.display.SimpleButton;
	@:keep public var mcErrorsCount (default, null):openfl.display.MovieClip;
	@:keep public var txtBId (default, null):openfl.text.TextField;
	@:keep public var txtErrCount (default, null):openfl.text.TextField;
	

	public function new () {

		super ();

		/*
		if (!SWFLite.instances.exists ("K9hvhgbZcNhqoEildtvt")) {

			SWFLite.instances.set ("K9hvhgbZcNhqoEildtvt", SWFLite.unserialize (Assets.getText ("K9hvhgbZcNhqoEildtvt")));

		}
		*/

		var swfLite = SWFLite.instances.get ("K9hvhgbZcNhqoEildtvt");
		var symbol = swfLite.symbols.get (19);

		__fromSymbol (swfLite, cast symbol);

	}


}


#else
@:bind @:native("ListRowBase") class ListRowBase extends openfl.display.MovieClip {


	@:keep public var bg (default, null):openfl.display.MovieClip;
	@:keep public var txtAId (default, null):openfl.text.TextField;
	@:keep public var txtCId (default, null):openfl.text.TextField;
	@:keep public var btnDetails (default, null):openfl.display.SimpleButton;
	@:keep public var mcErrorsCount (default, null):openfl.display.MovieClip;
	@:keep public var txtBId (default, null):openfl.text.TextField;
	@:keep public var txtErrCount (default, null):openfl.text.TextField;
	

	public function new () {

		super ();

	}


}
#end