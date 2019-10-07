package;

import feathers.data.ArrayCollection;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author Asim
 */
class Main extends Sprite
{
	private var data	: ArrayCollection<FakeDao> = null;
	private var listBox	: SimpleListBox = null;

	public function new()
	{
		super();

		this.addEventListener(Event.ADDED_TO_STAGE, init);
	}

	private function init(e:Event):Void
	{
		this.removeEventListener(Event.ADDED_TO_STAGE, init);

		initData();
		initUI();
	}

	private function initData():Void
	{
		data = new ArrayCollection();

		//for (idx in 0...100) //waiting for next release to use this number 
		for (idx in 0...10)
		{
			var obj:FakeDao =
			{
				aId:idx,
				bId:idx + 1,
				cId:idx + 2
			}
			data.add(obj);
		}
	}

	private function initUI():Void
	{
		listBox = new SimpleListBox();
		this.addChild(listBox);
		listBox.load(data);
	}

}
