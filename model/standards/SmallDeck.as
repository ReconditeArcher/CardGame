package model.standards
{
	import model.cards.CardAbbs;
	import model.cards.CardSet;
	import model.cards.CardUtils;

	/**
	 * @author ReconditeArcher (Sakhatskiy Ilya)
	 */
	public class SmallDeck extends CardSet
	{
		public function SmallDeck()
		{
			super(36);

			addCard(CardUtils.getCardByAbb(CardAbbs.CA));
			addCard(CardUtils.getCardByAbb(CardAbbs.CK));
			addCard(CardUtils.getCardByAbb(CardAbbs.CQ));
			addCard(CardUtils.getCardByAbb(CardAbbs.CJ));
			addCard(CardUtils.getCardByAbb(CardAbbs.CT));
			addCard(CardUtils.getCardByAbb(CardAbbs.C9));
			addCard(CardUtils.getCardByAbb(CardAbbs.C8));
			addCard(CardUtils.getCardByAbb(CardAbbs.C7));
			addCard(CardUtils.getCardByAbb(CardAbbs.C6));

			addCard(CardUtils.getCardByAbb(CardAbbs.SA));
			addCard(CardUtils.getCardByAbb(CardAbbs.SK));
			addCard(CardUtils.getCardByAbb(CardAbbs.SQ));
			addCard(CardUtils.getCardByAbb(CardAbbs.SJ));
			addCard(CardUtils.getCardByAbb(CardAbbs.ST));
			addCard(CardUtils.getCardByAbb(CardAbbs.S9));
			addCard(CardUtils.getCardByAbb(CardAbbs.S8));
			addCard(CardUtils.getCardByAbb(CardAbbs.S7));
			addCard(CardUtils.getCardByAbb(CardAbbs.S6));

			addCard(CardUtils.getCardByAbb(CardAbbs.DA));
			addCard(CardUtils.getCardByAbb(CardAbbs.DK));
			addCard(CardUtils.getCardByAbb(CardAbbs.DQ));
			addCard(CardUtils.getCardByAbb(CardAbbs.DJ));
			addCard(CardUtils.getCardByAbb(CardAbbs.DT));
			addCard(CardUtils.getCardByAbb(CardAbbs.D9));
			addCard(CardUtils.getCardByAbb(CardAbbs.D8));
			addCard(CardUtils.getCardByAbb(CardAbbs.D7));
			addCard(CardUtils.getCardByAbb(CardAbbs.D6));

			addCard(CardUtils.getCardByAbb(CardAbbs.HA));
			addCard(CardUtils.getCardByAbb(CardAbbs.HK));
			addCard(CardUtils.getCardByAbb(CardAbbs.HQ));
			addCard(CardUtils.getCardByAbb(CardAbbs.HJ));
			addCard(CardUtils.getCardByAbb(CardAbbs.HT));
			addCard(CardUtils.getCardByAbb(CardAbbs.H9));
			addCard(CardUtils.getCardByAbb(CardAbbs.H8));
			addCard(CardUtils.getCardByAbb(CardAbbs.H7));
			addCard(CardUtils.getCardByAbb(CardAbbs.H6));
		}
	}
}
