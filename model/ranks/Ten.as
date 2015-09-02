package model.ranks
{
	public class Ten extends Rank
	{
		public function Ten()
		{
			super();
		}

		override public function get rank():int {
			return 10;
		}

		override public function get abb():String {
			return 'T';
		}
	}
}
