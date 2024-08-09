import 'package:flutter/material.dart';
import 'package:flutter_application/pages/shopper/model/cart.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: Container(
          color: Colors.yellow,
          child: Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(32),
                child: _CartList(),
              )),
              const Divider(
                height: 4,
                color: Colors.black,
              ),
              _CartTotal(),
            ],
          ),
        ));
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hugeStyle =
        Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 48);
    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CartModel>(builder: (context, cart, child) {
              return Text(
                'Total: ${cart.totalPrice}',
                style: hugeStyle,
              );
            }),
            const SizedBox(width: 24),
            FilledButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Buying not supported yet.')));
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('BUY')),
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.titleLarge;

    var cart = context.watch<CartModel>();

    return ListView.builder(
      itemBuilder: (context, state) {
        return ListTile(
          leading: const Icon(Icons.done),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {
              cart.remove(cart.items[state]);
            },
          ),
          title: Text(
            cart.items[state].name,
            style: itemNameStyle,
          ),
        );
      },
      itemCount: cart.items.length,
    );
  }
}
