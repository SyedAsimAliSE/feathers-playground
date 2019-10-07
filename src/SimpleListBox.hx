package;
import feathers.controls.LayoutGroup;
import feathers.controls.ListBox;
import feathers.data.ArrayCollection;
import openfl.display.Sprite;
import openfl.events.Event;

/**
 * ...
 * @author Asim
 */
class SimpleListBox extends Sprite
{
	private var data	: ArrayCollection<FakeDao> = null;
	private var header	: ListHeaderBase = null;
	private var listBox	: ListBox = null;

	public function new()
	{
		super();
		this.addEventListener(Event.ADDED_TO_STAGE, init);
	}

	private function init(e:Event):Void
	{
		this.removeEventListener(Event.ADDED_TO_STAGE, init);

		initUI();
	}

	private function initUI():Void
	{
		header = new ListHeaderBase();
		this.addChild(header);
		header.x = 25;
		header.y = 25;

		listBox	= new ListBox();
		listBox.x = 25;
		listBox.y = 60;
		this.addChild(listBox);
	}

	public function load(_data:ArrayCollection<FakeDao>):Void
	{
		data = _data;

		listBox.dataProvider = data;

		listBox.itemRendererFactory = () ->
		{
			var itemRenderer = new LayoutGroup();

			var row:ListViewRow = new ListViewRow();
			row.name = "row";

			itemRenderer.addChild(row);

			return itemRenderer;
		}

		listBox.updateItemRenderer = (itemRenderer:LayoutGroup, data:Dynamic, index:Int) ->
		{
			var row:ListViewRow = cast(itemRenderer.getChildByName("row"), ListViewRow);
			row.load(data);
		};

	}

	public function updateList(_data:ArrayCollection<FakeDao>):Void
	{
		data = _data;

		if (listBox != null)
		{
			listBox.dataProvider = data;

			listBox.updateItemRenderer = (itemRenderer:LayoutGroup, data:Dynamic, index:Int) ->
			{
				var row:ListViewRow = cast(itemRenderer.getChildByName("row"), ListViewRow);
				row.load(data);
			};
		}

	}

	public function unload():Void
	{
		if (listBox != null)
		{
			listBox.cleanupItemRenderer = (itemRenderer:LayoutGroup, data:Dynamic) ->
			{
				var row:ListViewRow = cast(itemRenderer.getChildByName("row"), ListViewRow);
				row.unload();
			};

			this.removeChild(listBox);
			listBox = null;
		}
	}

}