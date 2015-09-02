package model.ranks
{
	public class Seven extends Rank
	{
		public function Seven()
		{
			super();
		}

		override public function get rank():int {
			return 7;
		}

		override public function get abb():String {
			return '7';
		}
	}
}
