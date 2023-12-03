import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jurysoft_mt/models/cart.dart';
import 'package:jurysoft_mt/models/orders.dart';
import 'package:jurysoft_mt/widgets/cart_item.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Razorpay? _razorpay;
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS PAYMENT: ${response.paymentId}", timeInSecForIosWeb: 4);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "ERROR HERE: ${response.code} - ${response.message}",
        timeInSecForIosWeb: 4);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET IS : ${response.walletName}",
        timeInSecForIosWeb: 4);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openPaymentPortal(
    String name,
    double amount,
  ) async {
    var options = {
      'key': 'rzp_test_d2KSGQPoAFE5Zz',
      'amount': amount * 100,
      'description': 'Payment',
      'prefill': {'contact': '9999999999', 'email': 'jhon@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => CartItemWidget(
                  productId: cart.items.keys.toList()[index],
                  id: cart.items.values.toList()[index].id,
                  name: cart.items.values.toList()[index].name,
                  quantity: cart.items.values.toList()[index].quantity,
                  price: cart.items.values.toList()[index].price),
              itemCount: cart.items.length,
            ),
          ),
          TextButton(
              onPressed: cart.totalAmount <= 0
                  ? () {
                      // openPaymentPortal("Adil", cart.totalAmount, "desc");
                      print("null");
                    }
                  : () async {
                      await Provider.of<Orders>(context, listen: false)
                          .addOrder(
                              cart.items.values.toList(), cart.totalAmount);
                      openPaymentPortal("Adil", cart.totalAmount);
                    },
              child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: const Center(
                    child: Text(
                      "Checkout",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )))
        ],
      ),
    );
  }
}
