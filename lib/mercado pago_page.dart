import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

const publicKey = "YOUR KEY";
const preferenceId = "YOUR ID";

class MercadoPagoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento com Mercado Pago'),
      ),
      body: Center(child:
        ElevatedButton(
          child: Text('Pagamento'),
          onPressed: () async{
            PaymentResult result =
                await MercadoPagoMobileCheckout.startCheckout(
              publicKey,
              preferenceId,
            );
            print(result.toString());
          },
        ),),
    );
  }
}
