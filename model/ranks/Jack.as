package model.ranks
{
	public class Jack extends Rank
	{
		public function Jack()
		{
			super();
		}

		override public function get rank():int {
			return 11;
		}

		override public function get abb():String {
			return 'J';
		}
	}
}
