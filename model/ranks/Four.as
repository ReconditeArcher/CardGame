package model.ranks
{
	public class Four extends Rank
	{
		public function Four()
		{
			super();
		}

		override public function get rank():int {
			return 4;
		}

		override public function get abb():String {
			return '4';
		}
	}
}
