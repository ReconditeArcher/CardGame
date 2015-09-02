package model.ranks
{
	public class Joker extends Rank
	{
		public function Joker()
		{
			super();
		}

		override public function get rank():int {
			return 15;
		}

		override public function get abb():String {
			return 'W';
		}
	}
}
