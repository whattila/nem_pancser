import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.dart';

PreferredSizeWidget pancserAppBar(BuildContext context, String? title)
  => AppBar(
      title: title != null ?
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFFD35400),
            fontWeight: FontWeight.bold,
          ),
        )
        : null,
      actions: [
        IconButton(
            onPressed: () { context.router.push(const CartRoute()); },
            icon: const Icon(
                Icons.shopping_cart,
                color: Color(0xFFD35400)
            )
        )
      ],
    );