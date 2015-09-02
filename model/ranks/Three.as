package model.ranks
{
	public class Three extends Rank
	{
		public function Three()
		{
			super();
		}

		override public function get rank():int {
			return 3;
		}

		override public function get abb():String {
			return '3';
		}
	}
}
