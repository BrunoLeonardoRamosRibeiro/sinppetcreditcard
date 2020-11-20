import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sinppetcreditcard/components/card_back.dart';
import 'package:sinppetcreditcard/components/card_front.dart';

class CreditCardWidget extends StatelessWidget {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:[
          FlipCard(
            key: cardKey,
            direction: FlipDirection.HORIZONTAL,
            speed: 700,
            flipOnTouch: false,
            front: CardFront(),
            back: CardBack(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(

              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                onSurface: Colors.transparent,
              ),
              onPressed: (){
                // TODO: virar cartão
                cardKey.currentState.toggleCard();
              },
              child: Text('Virar Cartão'),
            ),
          ),
        ],
      ),
    );
  }
}
