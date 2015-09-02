package model.cards
{
	import model.ranks.Rank;
	import model.suits.Suit;

	import net.reconditeden.debug.assert;

	/**
	 * @author ReconditeArcher (Sakhatskiy Ilya)
	 */
	public class Card
	{
		private var _suit:Suit;
		private var _rank:Rank;

		public function Card(suit:Suit, rank:Rank)
		{
			assert(suit != null, 'suit cannot be null');
			assert(rank != null, 'rank cannot be null');

			_suit = suit;
			_rank = rank;
		}

		public function get suit():Suit {
			return _suit;
		}

		public function get rank():Rank {
			return _rank;
		}
	}
}
