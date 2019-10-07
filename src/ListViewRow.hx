package;

import openfl.display.MovieClip;
import openfl.events.Event;
import openfl.events.MouseEvent;

/**
 * ...
 * @author Asim
 *
 */
class ListViewRow extends ListRowBase
{
	public static inline var ON_VIEW:String = "onView";

	private var _data:FakeDao = null;

	public function new()
	{
		super();
		this.addEventListener(Event.ADDED_TO_STAGE, init);
	}

	private function init(e:Event):Void
	{
		this.removeEventListener(Event.ADDED_TO_STAGE, init);

		bg.stop();
		mcErrorsCount.gotoAndStop("NORMAL");
	}

	public function load(record:FakeDao):Void
	{
		_data = record;

		this.addEventListener(MouseEvent.ROLL_OVER, evtHandler);
		this.addEventListener(MouseEvent.ROLL_OUT, evtHandler);

		txtAId.text = Std.string(_data.aId);
		txtBId.text = Std.string(_data.bId);
		txtCId.text = Std.string(_data.cId);

		btnDetails.addEventListener(MouseEvent.CLICK, onView);
	}

	private function onView(e:MouseEvent):Void
	{
		trace(_data.aId);
	}

	private function evtHandler(e:MouseEvent):Void
	{
		var obj:MovieClip = e.currentTarget;
		switch (e.type)
		{
			case MouseEvent.ROLL_OVER	: { bg.gotoAndStop("OVER"); }
			case MouseEvent.ROLL_OUT	: { bg.gotoAndStop("OUT"); }
			//case MouseEvent.CLICK		: {  }
			default:
		}
	}

	public function unload():Void
	{

		btnDetails.removeEventListener(MouseEvent.CLICK, onView);

		this.removeEventListener(MouseEvent.ROLL_OVER, evtHandler);
		this.removeEventListener(MouseEvent.ROLL_OUT, evtHandler);

		_data = null;
	}

}
