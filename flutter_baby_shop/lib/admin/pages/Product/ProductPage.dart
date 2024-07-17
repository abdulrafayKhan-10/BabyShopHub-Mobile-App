
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shop/admin/pages/Product/Widgets/ProductsTableData.dart';
import 'package:shop/admin/providers/AddProductProvider.dart';
import 'package:shop/admin/widgets/MyIconButton.dart';
import 'package:shop/admin/widgets/PrimaryButton.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<AddProductProvider>(builder: (context, value, chil) {
          return value.isLoading ? LinearProgressIndicator() : SizedBox();
        }),
        SizedBox(height: 10),
        Row(
          children: [
            Row(
              children: [
                Container(
                  width: 5,
                  height: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 10),
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyIconButton(
              icon: Icons.refresh,
              color: Colors.orange,
              onTap: () {},
            ),
            SizedBox(width: 10),
            PrimaryButton(
              name: "Export",
              icon: Icons.import_export_sharp,
              onTap: () {},
              color: Colors.deepPurple,
            ),
            SizedBox(width: 10),
            PrimaryButton(
              name: "Add New",
              icon: Icons.add,
              onTap: () {
                context.push('/addProduct');
              },
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(width: 10),
          ],
        ),
        SizedBox(height: 20),
        Consumer<AddProductProvider>(builder: (context, value, child) {
          return value.isLoading ? SizedBox() : ProductsTableData();
        })
      ],
    );
  }
}
