import 'package:flutter/material.dart';


import '../../../core/resources/const_values_manager.dart';
import '../../../core/resources/height_manager.dart';
import 'list_view_design_of_medicines_in_cart.dart';

class ListViewOfMedicinesCartWidget extends StatelessWidget {
  const ListViewOfMedicinesCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h235,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: ConstValueManager.listMedicineCartModel.length,
        separatorBuilder: (context, index) => SizedBox(height: HeightManager.h15,),
        itemBuilder: (context, index) {
          return ListViewDesignOfMedicinesInCart(
            model: ConstValueManager.listMedicineCartModel[index],
          );
        },
      ),
    );
  }
}
