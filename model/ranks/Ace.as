package model.ranks
{
	public class Ace extends Rank
	{
		public function Ace()
		{
			super();
		}

		override public function get rank():int {
			return 14;
		}

		override public function get abb():String {
			return 'A';
		}
	}
}
