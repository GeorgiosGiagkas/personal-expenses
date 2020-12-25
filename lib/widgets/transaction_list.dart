import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({this.transactions});

  @override
  Widget build(BuildContext context) {
    //ListView with children for short lists
    //ListView.builder for large lists. Procces called: lazily rendering widgets
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: this.transactions.length,
        itemBuilder: (ctx, index){
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );

//    return Column(
//      children: transactions
//          .map((tx) => Card(
//                child: Row(
//                  children: [
//                    Container(
//                      margin: EdgeInsets.symmetric(
//                        horizontal: 15,
//                        vertical: 10,
//                      ),
//                      decoration: BoxDecoration(
//                        border: Border.all(
//                          color: Colors.purple,
//                          width: 2,
//                        ),
//                      ),
//                      padding: EdgeInsets.all(10),
//                      child: Text(
//                        '\$${tx.amount}',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          fontSize: 20,
//                          color: Colors.purple,
//                        ),
//                      ),
//                    ),
//                    Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: [
//                        Text(
//                          tx.title,
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 15,
//                          ),
//                        ),
//                        Text(
//                          DateFormat.yMMMd().format(tx.date),
//                          style: TextStyle(
//                            color: Colors.grey,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ))
//          .toList(),
//    );
  }
}
