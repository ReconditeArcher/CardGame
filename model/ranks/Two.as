package model.ranks
{
	public class Two extends Rank
	{
		public function Two()
		{
			super();
		}

		override public function get rank():int {
			return 2;
		}

		override public function get abb():String {
			return '2';
		}
	}
}
