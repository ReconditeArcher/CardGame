package model.cards
{
	import net.reconditeden.debug.assert;
	import net.reconditeden.utils.collections.VectorUtils;

	/**
	 * @author ReconditeArcher (Sakhatskiy Ilya)
	 */
	public class CardSet
	{
		private var _cards:Vector.<Card>;

		public function CardSet(initialSize:int)
		{
			_cards = new Vector.<Card>(initialSize, true);
		}

		public function addCards(newCards:Vector.<Card>):void
		{
			assert(newCards != null, 'Cards cannot be null');
			assert(firstEmptyIndex > -1, 'There is no empty places in set');

			var i:int = firstEmptyIndex;
			for each (var card:Card in newCards) {
				if (!card) continue;

				_cards[i++] = card;
			}

			VectorUtils.denseVector(_cards);
		}

		public function addCard(card:Card):void
		{
			assert(card != null, 'Card cannot be null');
			assert(firstEmptyIndex > -1, 'There is no empty places in set');

			_cards[firstEmptyIndex] = card;
		}

		public function containsCard(card:Card):Boolean
		{
			assert(card != null, 'Card cannot be null');

			return _cards.indexOf(card) > -1;
		}

		public function removeCard(card:Card):Card
		{
			assert(card != null, 'Card cannot be null');

			var index:int = _cards.indexOf(card);
			var removedCard:Card;
			if (index > -1) {
				removedCard = _cards[index];
				_cards[index] = null;
			}

			VectorUtils.denseVector(_cards);

			return removedCard;
		}

		public function shuffle():void
		{
			var i:int = 5;
			while (i--) {
				_cards.map(
					function (card:Card, index:int, ...rest):void
					{
						var randomIndex:int = Math.floor(Math.random() * _cards.length);
						var cardAtRandomIndex:Card = _cards[randomIndex];
						_cards[randomIndex] = card;
						_cards[index] = cardAtRandomIndex;
					}
				);
			}

			VectorUtils.denseVector(_cards);
		}

		public function pickTopCard():Card
		{
			var topCard:Card;

			var lastCardIndex:int = firstEmptyIndex;
			lastCardIndex = lastCardIndex == -1 ? _cards.length - 1 : lastCardIndex - 1;

			if (lastCardIndex > -1) {
				topCard = _cards[lastCardIndex];
				_cards[lastCardIndex] = null;
			}

			return topCard;
		}

		public function pickBottomCard():Card
		{
			var bottomCard:Card;

			if (cardsNumber > 0) {
				bottomCard = _cards[0];
				_cards[0] = null;

				VectorUtils.denseVector(_cards);
			}

			return bottomCard;
		}

		public function pickRandomCard():Card
		{
			var randomCard:Card;

			if (cardsNumber > 0) {
				var randomIndex:int = Math.floor(Math.random() * cardsNumber);
				randomCard = _cards[randomIndex];
				_cards[randomIndex] = null;

				VectorUtils.denseVector(_cards);
			}

			return randomCard;
		}

		public function toString():String
		{
			var resultString:String = 'CardSet: [';
			for each (var card:Card in _cards) {
				if (!card) continue;

				resultString += ' {' + card.suit.abb + card.rank.abb + '} ';
			}
			resultString += ']';

			return resultString;
		}

		///////////////////////////////////////////////////
		// Private ////////////////////////////////////////
		///////////////////////////////////////////////////

		///////////////////////////////////////////////////
		// Getters & Setters //////////////////////////////
		///////////////////////////////////////////////////
		public function get cardsNumber():int {
			return firstEmptyIndex == -1 ? _cards.length : firstEmptyIndex;
		}

		private function get firstEmptyIndex():int {
			return _cards.indexOf(null);
		}
	}
}
