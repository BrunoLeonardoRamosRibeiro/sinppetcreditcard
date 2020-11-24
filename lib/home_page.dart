import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sinppetcreditcard/components/credit_card_widget.dart';
import 'package:sinppetcreditcard/with_component_credit_card_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagamento'),
        ),
        body: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formKey,
            child: Column(
              children: [
                CreditCardWidget(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Finalizar Pedido'),
                    onPressed: (){
                      if(formKey.currentState.validate()){
                        print('Validado OK!');
                      }
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('TELA COM MY SAMPLE'),
                    onPressed: (){

                      Get.to(MySample(), transition: Transition.topLevel, );

                    },

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
