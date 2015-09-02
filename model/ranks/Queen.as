package model.ranks
{
	public class Queen extends Rank
	{
		public function Queen()
		{
			super();
		}

		override public function get rank():int {
			return 12;
		}

		override public function get abb():String {
			return 'Q';
		}
	}
}
