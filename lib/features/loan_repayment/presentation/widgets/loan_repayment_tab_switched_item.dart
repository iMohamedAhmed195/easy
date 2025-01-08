import 'package:flutter/material.dart';

class LoanRepaymentTabSwitchedItem extends StatelessWidget {
  final String title;

  const LoanRepaymentTabSwitchedItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Center(
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
