import 'package:flutter/material.dart';

import '../../../controller/count_controller.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/fonts_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/icons_size_manager.dart';
import '../../../core/resources/padding_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';
import '../../../model/medicine_cart_model.dart';

class ListViewDesignOfMedicinesInCart extends StatelessWidget {
  const ListViewDesignOfMedicinesInCart({
    super.key,
    required this.model,
  });

  final MedicineCartModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: HeightManager.h100,
      width: WidthManagers.w252,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.semiDarkGray,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: HorizontalPaddingManager.p8,
          vertical: VerticalPaddingManager.p8,
        ),
        child: Row(
          children: [
            Image.asset(
              model.medicineImage,
              height: HeightManager.h73,
            ),

            SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          model.medicineName,
                          style: TextStyle(
                            color: ColorManager.black,
                            fontWeight: FontWeight.bold,
                            fontSize: FontSizeManagers.f16,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.delete_outline_rounded,
                        color: ColorManager.grey,
                      ),
                    ],
                  ),

                  /// pieces
                  Text(
                    model.medicinePieces,
                    style: TextStyle(color: ColorManager.grey,fontWeight: FontWeight.bold,fontSize: FontSizeManagers.f12),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CounterControl(
                        iconSize: IconSizeManager.i30,
                        numberSize: FontSizeManagers.f20,
                      ),

                      Text(
                        model.medicinePrice,
                        style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSizeManagers.f18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}