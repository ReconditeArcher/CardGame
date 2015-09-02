package model.ranks
{
	public class King extends Rank
	{
		public function King()
		{
			super();
		}

		override public function get rank():int {
			return 13;
		}

		override public function get abb():String {
			return 'K';
		}
	}
}
