import 'package:flutter/material.dart';
import 'package:todo_app/helpers/colors.dart';
import 'package:todo_app/views/widgets/forms/task_form.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 30.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        'Task form',
                        style: TextStyle(
                          color: AppColors.darkGrey,
                          fontSize: 24,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Flexible(
                      child: InkWell(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: AppColors.darkGrey,
                            fontFamily: 'Open Sans',
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              ),
              TaskForm(),
            ],
          ),
        ),
      ),
    );
  }
}