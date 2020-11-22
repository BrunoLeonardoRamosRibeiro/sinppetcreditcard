import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:sinppetcreditcard/components/card_back.dart';
import 'package:sinppetcreditcard/components/card_front.dart';

class CreditCardWidget extends StatelessWidget {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  final FocusNode numberFocus = FocusNode();
  final FocusNode dateFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();
  final FocusNode cvvFocus = FocusNode();

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
            front: CardFront(
              numberFocus: numberFocus,
              dateFocus: dateFocus,
              nameFocus: nameFocus,
              finished: (){
                cardKey.currentState.toggleCard();
                cvvFocus.requestFocus();
              },
            ),
            back: CardBack(
              cvvFocus: cvvFocus,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(

              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                onSurface: Colors.transparent,
              ),
              onPressed: (){

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
