import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class CustomAllValues extends StatelessWidget {
  const CustomAllValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    right: 60,
                  ),
                  child: Text(
                    'Meu Saldo:',
                    style: TextStyle(
                      color: color2,
                    ),
                  ),
                ),
                Text(
                  "R\$100,00",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                      size: 30,
                    ),
                    Text(
                      "R\$50,00",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                      size: 30,
                    ),
                    Text(
                      "R\$20,00",
                      style: TextStyle(
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
    );
  }
}