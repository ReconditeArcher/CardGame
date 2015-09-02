package model.ranks
{
	public class Eight extends Rank
	{
		public function Eight()
		{
			super();
		}

		override public function get rank():int {
			return 8;
		}

		override public function get abb():String {
			return '8';
		}
	}
}
