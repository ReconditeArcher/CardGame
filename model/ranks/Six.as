package model.ranks
{
	public class Six extends Rank
	{
		public function Six()
		{
			super();
		}

		override public function get rank():int {
			return 6;
		}

		override public function get abb():String {
			return '6';
		}
	}
}
