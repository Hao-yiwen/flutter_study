import 'package:flutter/material.dart';
import 'package:flutter_application/pages/shopper/model/cart.dart';
import 'package:flutter_application/pages/shopper/model/catalog.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MyCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _MyAppBar(),
        const SliverToBoxAdapter(
          child: SizedBox(height: 12),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return _MyListItem(
            index: index,
          );
        }),)
      ],
    ));
  }
}

class _MyListItem extends StatelessWidget {
  final int index;

  const _MyListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var item = context
        .select<CatalogModel, Item>((catalog) => catalog.getByPosition(index));
    var textTheme = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 48,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: item.color,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(child: Text(item.name, style: textTheme)),
            const SizedBox(width: 24),
            _AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;

  const _AddButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var isInCart =
        context.select<CartModel, bool>((cart) => cart.items.contains(item));

    return TextButton(
        onPressed: isInCart
            ? null
            : () {
                var cart = context.read<CartModel>();
                cart.add(item);
              },
        style:
            ButtonStyle(overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return Theme.of(context).primaryColor;
          }
          return null;
        })),
        child: isInCart ? Icon(Icons.check) : Text('ADD'));
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Catalog',
        style: Theme.of(context).textTheme.displayLarge,
      ),
      floating: true,
      actions: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).push('/catalog/cart');
            },
            icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
