package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		Assets.defaultRootPath = rootPath;

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_sourcesanspro_bold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_sourcesanspro_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_sourcesanspro_semibold_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_ubuntu_regular_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":"LIB","assets":"aoy4:pathy7:LIB.biny4:sizei15687y4:typey4:TEXTy2:idR1y7:preloadtgh","rootPath":"lib/LIB","version":2,"libraryArgs":["LIB.bin","K9hvhgbZcNhqoEildtvt"],"libraryType":"openfl._internal.formats.swf.SWFLiteLibrary"}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("LIB", library);
		data = '{"name":null,"assets":"aoy4:sizei267388y4:typey4:FONTy9:classNamey37:__ASSET__fonts_sourcesanspro_bold_ttfy2:idy30:fonts%2FSourceSansPro-Bold.ttfy7:preloadtgoR0i269108R1R2R3y40:__ASSET__fonts_sourcesanspro_regular_ttfR5y33:fonts%2FSourceSansPro-Regular.ttfR7tgoR0i268280R1R2R3y41:__ASSET__fonts_sourcesanspro_semibold_ttfR5y34:fonts%2FSourceSansPro-SemiBold.ttfR7tgoR0i298660R1R2R3y33:__ASSET__fonts_ubuntu_regular_ttfR5y26:fonts%2FUBUNTU-REGULAR.TTFR7tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("LIB");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("LIB");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_bold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_semibold_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_ubuntu_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__lib_bin extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__lib_lib_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:font("bin/html5/obj/webfont/SourceSansPro-Bold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_bold_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/SourceSansPro-Regular.ttf") @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_regular_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/SourceSansPro-SemiBold.ttf") @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_semibold_ttf extends lime.text.Font {}
@:keep @:font("bin/html5/obj/webfont/UBUNTU-REGULAR.TTF") @:noCompletion #if display private #end class __ASSET__fonts_ubuntu_regular_ttf extends lime.text.Font {}
@:keep @:file("C:/Users/valor/Desktop/FeathersPlayground/bin/html5/obj/libraries/LIB/LIB.bin") @:noCompletion #if display private #end class __ASSET__lib_bin extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__lib_lib_json extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__fonts_sourcesanspro_bold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_bold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/SourceSansPro-Bold"; #else ascender = 984; descender = -273; height = 1257; numGlyphs = 1896; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Source Sans Pro Bold"; super (); }}
@:keep @:expose('__ASSET__fonts_sourcesanspro_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/SourceSansPro-Regular"; #else ascender = 984; descender = -273; height = 1257; numGlyphs = 1896; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Source Sans Pro Regular"; super (); }}
@:keep @:expose('__ASSET__fonts_sourcesanspro_semibold_ttf') @:noCompletion #if display private #end class __ASSET__fonts_sourcesanspro_semibold_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/SourceSansPro-SemiBold"; #else ascender = 984; descender = -273; height = 1257; numGlyphs = 1896; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Source Sans Pro SemiBold"; super (); }}
@:keep @:expose('__ASSET__fonts_ubuntu_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_ubuntu_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/UBUNTU-REGULAR"; #else ascender = 932; descender = -189; height = 1149; numGlyphs = 1262; underlinePosition = -162; underlineThickness = 79; unitsPerEM = 1000; #end name = "Ubuntu Regular"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_semibold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_semibold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_ubuntu_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_ubuntu_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_ubuntu_regular_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_bold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_bold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_bold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_sourcesanspro_semibold_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_sourcesanspro_semibold_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_sourcesanspro_semibold_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_ubuntu_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_ubuntu_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_ubuntu_regular_ttf ()); super (); }}

#end

#end
#end

#end
