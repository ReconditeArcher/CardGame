package model.cards
{
	import model.ranks.Ace;
	import model.ranks.Eight;
	import model.ranks.Five;
	import model.ranks.Four;
	import model.ranks.Jack;
	import model.ranks.Joker;
	import model.ranks.King;
	import model.ranks.Nine;
	import model.ranks.Queen;
	import model.ranks.Seven;
	import model.ranks.Six;
	import model.ranks.Ten;
	import model.ranks.Three;
	import model.ranks.Two;
	import model.suits.Clubs;
	import model.suits.Diamonds;
	import model.suits.Hearts;
	import model.suits.Spades;

	/**
	 * @author ReconditeArcher (Sakhatskiy Ilya)
	 */
	public class CardUtils
	{
		public static const SUITS_BY_ABBREVIATION:Object = { C: Clubs, S: Spades, D: Diamonds, H: Hearts };
		public static const RANK_BY_ABBREVIATION:Object = { A: Ace, K: King, Q: Queen, J: Jack, T: Ten, 9: Nine, 8: Eight, 7: Seven, 6: Six, 5: Five, 4: Four, 3: Three, 2: Two, W: Joker };

		public static function getCardByAbb(abb:String):Card
		{
			var suitType:Class = SUITS_BY_ABBREVIATION[abb.charAt(0)];
			var rankType:Class = RANK_BY_ABBREVIATION[abb.charAt(1)];

			return new Card(new suitType(), new rankType());
		}
	}
}
