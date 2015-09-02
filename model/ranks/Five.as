package model.ranks
{
	public class Five extends Rank
	{
		public function Five()
		{
			super();
		}

		override public function get rank():int {
			return 5;
		}

		override public function get abb():String {
			return '5';
		}
	}
}
