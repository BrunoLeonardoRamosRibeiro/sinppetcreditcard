import 'package:flutter/material.dart';
import 'package:mercado_pago_mobile_checkout/mercado_pago_mobile_checkout.dart';

const publicKey = "TEST-095d9742-8289-4bc8-979b-3576eb47472c";
const preferenceId = "43304774-c720e25f-8e82-4de2-85d1-9823272e62d3";

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
