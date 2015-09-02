package model.ranks
{
	public class Nine extends Rank
	{
		public function Nine()
		{
			super();
		}

		override public function get rank():int {
			return 9;
		}

		override public function get abb():String {
			return '9';
		}
	}
}
