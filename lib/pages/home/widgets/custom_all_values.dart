import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomAllValues extends StatefulWidget {
  const CustomAllValues({super.key});

  @override
  State<CustomAllValues> createState() => _CustomAllValuesState();
}

class _CustomAllValuesState extends State<CustomAllValues> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: CustomColors.color5,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Meu Saldo:',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'R\$ ${totalValue.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(
                        'R\$ ${positiveValue.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_downward,
                        color: Colors.red,
                        size: 30,
                      ),
                      Text(
                        'R\$ ${negativeValue.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
