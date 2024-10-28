import 'dart:io';
import 'package:basic_app/configs/style_config.dart';
import 'package:basic_app/configs/theme_config.dart';
import 'package:basic_app/custom_models/key_value_model.dart';
import 'package:basic_app/custom_widgets/boxdecorations.dart';
import 'package:basic_app/custom_widgets/input_decorations.dart';
import 'package:basic_app/helpers/device_info.dart';
import 'package:basic_app/helpers/main_helper.dart';
import 'package:basic_app/helpers/t_argument_call_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'buttons.dart';

class TFormModel {
  static Widget textFieldAndDropDowRow(
      {required BuildContext context,
      required String editTextTitle,
      String hint = '',
      bool readOnly = false,
      required String dropdownTitle,
      required TextEditingController controller,
      required List<KeyValueModel> dropdownList,
        KeyValueModel? selectItem,
      required OnSelectKeyValueModel onSelected,
      required bool isDropDownInit,
      double? height}) {
    return buildSectionModel(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildFormItemModel(context, editTextTitle,
            editTextField(context,controller, hint, readOnly: readOnly)),
        buildFormItemModel(
            context,
            dropdownTitle,
            buildDropdownField(
                data: dropdownList,
                selectedValue: selectItem,
                context: context,
                onSelected: onSelected,
                isDataInit: isDropDownInit)),
      ],
    ));
  }

  static Widget dropDowAndTextFieldRow(
      {required BuildContext context,
      required String editTextTitle,
      String hint = '',
      bool readOnly = false,
      required String dropdownTitle,
      required TextEditingController controller,
      required List<KeyValueModel> dropdownList,
      required KeyValueModel? selectItem,
      required OnSelectKeyValueModel onSelected,
      required bool isDropDownInit,
      double? height}) {
    return buildSectionModel(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildFormItemModel(
            context,
            dropdownTitle,
            buildDropdownField(
                data: dropdownList,
                selectedValue: selectItem,
                context: context,
                onSelected: onSelected,
                isDataInit: isDropDownInit)),
        buildFormItemModel(context, editTextTitle,
            editTextField(context,controller, hint, readOnly: readOnly)),
      ],
    ));
  }

  static Widget fullWidthTextField(
      {required BuildContext context,
      required String editTextTitle,
      String hint = '',
      bool readOnly = false,
      required TextEditingController controller,
      double height = 64}) {
    return buildSectionModel(buildFormItemModel(context, editTextTitle,
        editTextField(context,controller, hint, readOnly: readOnly),
        isFullWidth: true, height: height));
  }

  static Widget fullWidthDropDown(
      {required BuildContext context,
      required String dropdownTitle,
      required List<KeyValueModel> dropdownList,
      KeyValueModel? selectItem,
      required OnSelectKeyValueModel onSelected,
      bool isDropDownInit = false,
      double height = 64}) {
    return buildSectionModel(buildFormItemModel(
        context,
        dropdownTitle,
        buildDropdownField(
            data: dropdownList,
            selectedValue: selectItem,
            context: context,
            onSelected: onSelected,
            isDataInit: isDropDownInit),
        height: height,
        isFullWidth: true));
  }

  static Widget textField2Row({
    required BuildContext context,
    required String editTextTitle1,
    String hint1 = '',
    bool readOnly1 = false,
    required TextEditingController controller1,
    required String editTextTitle2,
    String hint2 = '',
    bool readOnly2 = false,
    required TextEditingController controller2,
    double? height,
    List<TextInputFormatter>? formatter,
    List<TextInputFormatter>? formatter2,
    String? info,
    String? info2,
  }) {
    return buildSectionModel(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildFormItemModel(
            context,
            editTextTitle1,
            editTextField(context,controller1, hint1,
                readOnly: readOnly1, formatter: formatter, info: info),
            height: (height ?? 64) + (info != null ? 10 : 0)),
        buildFormItemModel(
            context,
            editTextTitle2,
            editTextField(context,controller2, hint2,
                readOnly: readOnly2, formatter: formatter2, info: info2),
            height: (height ?? 64) + (info2 != null ? 10 : 0)),
      ],
    ));
  }

  static Widget textAndDateRow(
      {required BuildContext context,
      required String editTextTitle,
      String hint = '',
      bool readOnly = false,
      required TextEditingController controller,
      required String dateTitle,
      required DateTime? currentDate,
      DateTime? initialDate,
      DateTime? lastDate,
      required SeoOnDateSelect onSelected,
      double? height}) {
    return buildSectionModel(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildFormItemModel(context, editTextTitle,
            editTextField(context,controller, hint, readOnly: readOnly)),
        buildFormItemModel(
            context,
            dateTitle,
            buildDateTimeModel(
                context: context,
                onSelected: onSelected,
                currentDate: currentDate,
                initialDate: initialDate,
                lastDate: lastDate)),
      ],
    ));
  }

  static Widget date2Row(
      {required BuildContext context,
      required String dateTitle,
      required DateTime? currentDate,
      DateTime? initialDate,
      DateTime? lastDate,
      required SeoOnDateSelect onSelected,
      required String dateTitle2,
      required DateTime? currentDate2,
      DateTime? initialDate2,
      DateTime? lastDate2,
      required SeoOnDateSelect onSelected2,
      double? height}) {
    return buildSectionModel(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildFormItemModel(
              context,
              dateTitle,
              buildDateTimeModel(
                  context: context,
                  onSelected: onSelected,
                  currentDate: currentDate,
                  initialDate: initialDate,
                  lastDate: lastDate)),
          buildFormItemModel(
              context,
              dateTitle2,
              buildDateTimeModel(
                  context: context,
                  onSelected: onSelected2,
                  currentDate: currentDate2,
                  initialDate: initialDate2,
                  lastDate: lastDate2)),
        ],
      ),
    );
  }

  static Widget dropDow2Row(
      {required BuildContext context,
      required String dropdownTitle1,
      required List<KeyValueModel> dropdownList1,
      KeyValueModel? selectItem1,
      required OnSelectKeyValueModel onSelected1,
      required bool isDropDownInit1,
      required String dropdownTitle2,
      required List<KeyValueModel> dropdownList2,
      KeyValueModel? selectItem2,
      required OnSelectKeyValueModel onSelected2,
      required bool isDropDownInit2,
      double? height}) {
    print("init data $isDropDownInit1");
    return buildSectionModel(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildFormItemModel(
              context,
              dropdownTitle1,
              buildDropdownField(
                  data: dropdownList1,
                  selectedValue: selectItem1,
                  context: context,
                  onSelected: onSelected1,
                  isDataInit: isDropDownInit1)),
          buildFormItemModel(
              context,
              dropdownTitle2,
              buildDropdownField(
                  data: dropdownList2,
                  selectedValue: selectItem2,
                  context: context,
                  onSelected: onSelected2,
                  isDataInit: isDropDownInit2)),
        ],
      ),
    );
  }

  Widget dropDowAndCalendarRow(
      {required BuildContext context,
      required String dropdownTitle,
      required List<KeyValueModel> dropdownList,
      KeyValueModel? selectItem,
      required OnSelectKeyValueModel onDropdownSelected,
      bool isDropDownInit = false,
      required String calendarTitle,
      DateTime? currentDate,
      DateTime? initialDate,
      DateTime? lastDate,
      required SeoOnDateSelect onSelectedDate,
      double? height}) {
    return buildSectionModel(
      Row(
        children: [
          buildFormItemModel(
              context,
              dropdownTitle,
              buildDropdownField(
                  data: dropdownList,
                  selectedValue: selectItem,
                  context: context,
                  onSelected: onDropdownSelected,
                  isDataInit: isDropDownInit)),
          buildFormItemModel(
              context,
              calendarTitle,
              buildDateTimeModel(
                  context: context,
                  onSelected: onSelectedDate,
                  currentDate: currentDate,
                  initialDate: initialDate,
                  lastDate: lastDate))
        ],
      ),
    );
  }

  static fullWidthFile(
      {required BuildContext context,
      required String title,
      required VoidCallback onPickFile,
      required VoidCallback onDeleteFile,
      required File? selectedFile,
      double height = 82}) {
    return buildSectionModel(noHeightFormItemModel(
        context,
        title,
        fileField(
          context: context,
          onPickFile: onPickFile,
          onDeleteFile: onDeleteFile,
          selectedFile: selectedFile,
        ),
        // height: height,
        isFullWidth: true));
  }

  static fullWidthTextArea(
      {required BuildContext context,
      required String title,
      required TextEditingController controller,
      String? hint}) {
    return buildSectionModel(
      noHeightFormItemModel(context, title,
          textAreaField(controller: controller, hint: hint ?? ''),
          isFullWidth: true),
    );
  }

/*
 static fullWidthCKEditor({required BuildContext context,required String title,required Function(Object value) onPoped,required CKEditorModel value,required String appbarTitle}){
   return buildSectionModel(buildFormItemModel(
       context,
       title,
       ckEditorModel(
         onPoped,value,appbarTitle
       ),
       height: 130,
       isFullWidth: true
   ));
  }*/

  static fullWidthCheckBox<T>(
      {required BuildContext context,
      required T data,
      required String title,
      required bool isChecked,
      required Function(bool? data, T dt) onClickCheck}) {
    return buildSectionModel(
      Container(
        child: checkBox(context,data, title, isChecked, onClickCheck),
      ),
    );
  }

  static Widget fileField({
    required BuildContext context,
    required VoidCallback onPickFile,
    required VoidCallback onDeleteFile,
    File? selectedFile,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Buttons(
          padding: EdgeInsets.zero,
          onPressed: onPickFile,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: BorderSide(
                color: ThemeConfig.mediumGrey,
              )),
          child: Container(
            // height: 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: ThemeConfig.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                  alignment: Alignment.center,
                  height: 46,
                  width: 80,
                  child: Text(
                    "Choose file",
                    style: TextStyle(fontSize: 12, color: ThemeConfig.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (selectedFile != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  height: 40,
                  alignment: Alignment.center,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ThemeConfig.grey,
                  ),
                  child: Text(
                    selectedFile.path.split("/").last ?? "",
                    style: TextStyle(fontSize: 9, color: ThemeConfig.white),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 5,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ThemeConfig.white),
                    // remove the selected file Buttons
                    child: InkWell(
                      onTap: onDeleteFile,
                      child: Icon(
                        Icons.close,
                        size: 12,
                        color: ThemeConfig.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  static textAreaField(
      {required TextEditingController controller, String hint = "Text Here"}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      constraints: BoxConstraints(minHeight: 80, minWidth: DeviceInfo.width),
      decoration: BoxDecorations.customRadius(
          radius: BorderRadius.circular(3),
          border: Border.all(color: ThemeConfig.grey)),
      child: TextField(
        controller: controller,
        decoration: InputDecoration.collapsed(hintText: hint),
      ),
    );
  }

/*
 static Widget ckEditorModel(
      Function(Object value) onPoped, CKEditorModel value, String appbarTitle) {
    print("ttt${value}");
    return SizedBox(
      height: 100,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecorations.basic(),
            width: DeviceInfo.width,
            height: 100,
            child: value.child,
          ),
          Container(
            width: DeviceInfo.width,
            height: 100,
            color: ThemeConfig.white.withOpacity(0.6),
            child: Center(
              child: Buttons(
                minWidth: 80.0,
                minHeight: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: ThemeConfig.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Edit...",
                      style: StyleConfig.fsMedium(context: context),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Icon(
                      Icons.edit,
                      size: 16,
                    ),
                  ],
                ),
                onPressed: () {
                  Get.to(CKEditor(
                    title: appbarTitle,
                    src: value.value,
                  ))?.then((value) {
                    if (value != null) {
                      onPoped(value);
                    }
                  });
                },
              ).small,
            ),
          ),
        ],
      ),
    );
  }
 Widget buildCKEditorModel(
      {required Function(Object value) onPoped,
     required CKEditorModel value,
     required String appbarTitle}) {
   return SizedBox(
     height: 100,
     child: Stack(
       children: [
         Container(
           padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
           decoration: BoxDecorations.basic(),
           width: DeviceInfo.width,
           height: 100,
           child:value.child,),
         Container(
           width: DeviceInfo.width,
           height: 100,
           color: ThemeConfig.white.withOpacity(0.6),
           child: Center(
             child: Buttons(
               minWidth: 80.0,
               minHeight: 20.0,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(8),
                   side: BorderSide(color: ThemeConfig.grey)),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     "Edit...",
                     style: StyleConfig.fsMedium(context: context),
                   ),
                   // SizedBox(
                   //   width: 10,
                   // ),
                   Icon(
                     Icons.edit,
                     size: 16,
                   ),
                 ],
               ),
               onPressed: () {
                 Get.to(CKEditor(
                   title: appbarTitle,
                   src: value.value,
                 ))?.then((value) {
                   if (value != null) {
                     onPoped(value);
                   }
                 });
               },
             ).small,
           ),
         ),

       ],
     ),
   );
 }


  buildRadioButtons(state, BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              // color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 18,
              width: 26,
              child: Radio<String>(
                value: "1",
                groupValue: state.isRoundTrip,
                visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                    horizontal: VisualDensity.minimumDensity),
                onChanged: (String? value) {
                 // context.read<ServiceBloc>().add(OnChangeRoundTrip(value));
                },
              ),
            ),
            Text(
              "Yes, it's a round trip ",
              style: StyleConfig.fsMedium(context: context),
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Container(
              // color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 18,
              width: 26,
              child: Radio<String>(
                value: "0",
                visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                    horizontal: VisualDensity.minimumDensity),
                groupValue: state.isRoundTrip,
                onChanged: (String? value) {

                },
              ),
            ),
            Text(
              "No, it's one way trip.",
              style: StyleConfig.fsMedium(context: context),
            )
          ],
        ),
      ],
    );
  }
 */

  static Widget buildDateTimeModel(
      {required BuildContext context,
      required DateTime? currentDate,
      DateTime? initialDate,
      DateTime? lastDate,
      required SeoOnDateSelect onSelected}) {
    return Container(
      height: 36,
      decoration: BoxDecorations.basic(),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Buttons(
        onPressed: () async {
          var pickedDate = await showDatePicker(
              context: context,
              firstDate: initialDate ?? DateTime.now(),
              lastDate: lastDate ?? DateTime(2050));
          onSelected(pickedDate);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currentDate == null
                  ? "mm/dd/yyyy"
                  : DateFormat('MM/dd/yyyy').format(currentDate),
              style: StyleConfig.fsMedium(context: context),
            ),
            Icon(
              Icons.calendar_month,
              size: 12,
            )
          ],
        ),
      ),
    );
  }

  static Widget buildTimeModel(
      TimeOfDay? time, BuildContext context, onChanged) {
    return Container(
      height: 36,
      decoration: BoxDecorations.basic(),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Buttons(
        onPressed: () async {
          var pickedTime = await showTimePicker(
              context: context, initialTime: TimeOfDay.now());
          onChanged(pickedTime);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              time == null ? "--:--" : "${time.hour}:${time.minute}",
              style: StyleConfig.fsMedium(context: context),
            ),
            Icon(
              Icons.watch_later_outlined,
              size: 12,
            )
          ],
        ),
      ),
    );
  }

  static Widget buildSectionModel(Widget child, {double padding = 10.0}) {
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: child,
    );
  }

  static Widget buildFormItemModel(
      BuildContext context, String title, Widget field,
      {double height = 64, bool isFullWidth = false}) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(bottom: 10),
      width: isFullWidth ? getWidth(context) : DeviceInfo.width * 0.5 - 20,
      height: height,
      // constraints: BoxConstraints(minHeight: height,minWidth:isFullWidth?DeviceInfo.width:DeviceInfo.width * 0.5 - 20 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [buildLabel(context,title), field],
      ),
    );
  }

  static Widget noHeightFormItemModel(
      BuildContext context, String title, Widget field,
      {double minHeight = 64, double minWidth = 64, bool isFullWidth = false}) {
    return Container(
      constraints: BoxConstraints(
          minHeight: minHeight,
          minWidth:
              isFullWidth ? DeviceInfo.width : DeviceInfo.width * 0.5 - 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [buildLabel(context,title), field],
      ),
    );
  }

  static Container buildDropdownField(
      {required List<KeyValueModel> data,
      required KeyValueModel? selectedValue,
      required BuildContext context,
      bool? isDataInit = false,
      required OnSelectKeyValueModel onSelected}) {
    isDataInit ??= false;
    return Container(
      height: 36,
      decoration: isDataInit ? BoxDecorations.basic() : null,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: isDataInit
          ? DropdownButton<KeyValueModel>(
              menuMaxHeight: 200,
              padding: EdgeInsets.zero,
              underline: SizedBox.shrink(),
              isExpanded: true,
              value: selectedValue,
              style: StyleConfig.fsMedium(context: context),
              items: data
                  .map<DropdownMenuItem<KeyValueModel>>(
                      (e) => DropdownMenuItem<KeyValueModel>(
                            value: e,
                            child: Text(
                              e.value,
                              style: StyleConfig.fsMedium(context: context),
                              maxLines: 2,
                            ),
                          ))
                  .toList(),
              onChanged: onSelected)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
    );
  }

  static Widget editTextField(BuildContext context,TextEditingController controller, String hint,
      {bool readOnly = false,
      List<TextInputFormatter>? formatter,
      String? info}) {
    return Container(
      height: info == null ? 36 : 48,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 36,
            child: TextField(
              readOnly: readOnly,
              controller: controller,
              autofocus: false,
              inputFormatters: formatter,
              decoration: InputDecorations.basic(hint_text: hint),
            ),
          ),
          if (info != null)
            Text(
              info,
              style: StyleConfig.fsXSmall(context:  context),
            )
        ],
      ),
    );
  }

  static buildLabel(BuildContext context,String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: StyleConfig.fsMedium(context: context)?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  static Widget selectSuggestionField(
      {
        required BuildContext context,
        required RxList<String> suggestions,
      required RxList selectedStrings,
      required TextEditingController controller,
      String hint = "Text...",
      void Function(String text)? onSelected,
      required void Function(int index) onRemoved}) {
    return Obx(() => Container(
          width: DeviceInfo.width,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecorations.basic(),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 5,
            spacing: 5,
            // mainAxisSize: MainAxisSize.min,
            children: [
              ...List.generate(
                  selectedStrings.length,
                  (index) => SizedBox(
                        height: 30,
                        child: Buttons(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: ThemeConfig.grey)),
                            onPressed: () => onRemoved(index),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.close,
                                  size: 15,
                                ),
                                Text(
                                  selectedStrings[index],
                                  style: StyleConfig.fsMedium(context: context),
                                ),
                              ],
                            )).small,
                      )),
              Autocomplete<String>(
                onSelected: (text) {
                  if (onSelected != null) {
                    onSelected(text);
                  }
                },
                fieldViewBuilder: (context, textController, onFocus, function) {
                  return TextField(
                    // expands: ,
                    controller: controller,
                    onChanged: (text) {
                      textController.text = text.trim();
                    },
                    // expands: true,
                    onTap: () {
                      textController.text = "";
                    },
                    maxLines: 1,
                    decoration: InputDecoration.collapsed(hintText: hint)
                        .copyWith(
                            constraints: selectedStrings.isNotEmpty
                                ? BoxConstraints.expand(width: 60, height: 30)
                                : null),
                    focusNode: onFocus,
                  );
                },
                // optionsMaxHeight: 100,
                optionsBuilder: (TextEditingValue textEditingValue) async {
                  return suggestions.where((String p0) => p0
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase()));
                  // return suggestions;
                },

                /*autofillHints: [
                "Dhaka",
                "Bogura",
                "Dha"
              ],
              autocorrect: true,
              onChanged: (text){
                context.read<ServiceBloc>().add(OnchangeLocation());
              },
              readOnly: readOnly,
              controller: controller,
              autofocus: false,
              decoration: InputDecorations.basic(hint_text: hint),*/
              ),
            ],
          ),
        ));
  }

  static Widget checkBox<T>(BuildContext context,T data, String title, bool isChecked,
      Function(bool? isChecked, T dt) onClickCheck) {
    return Buttons(
      // color: Colors.red,
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
              visualDensity: VisualDensity(horizontal: -1, vertical: -4),
              value: isChecked,
              onChanged: (changedData) {
                onClickCheck(changedData, data);
              }),
          Text(
            title,
            style: StyleConfig.fsMedium(context: context),
          )
        ],
      ),
    ).small;
  }


  static Widget editTextdWithPrefix(BuildContext context,TextEditingController controller,String title,IconData prefix,String hint,
      {bool isPassword=false}){
    return buildFormItemModel(
     context,
        title,
        SizedBox(
          height: 36,
          child: TextField(
            controller: controller,
            autofocus: false,
            obscureText: isPassword,
            enableSuggestions: false,
            autocorrect: false,
            cursorColor:themeColorAlter ,
            style: StyleConfig.fsMedium(context: context),
            decoration: InputDecorations.basic(
                prefixIcon: Icon(
                  prefix,
                ),
                hint_text: hint),
          ),
        ),
      isFullWidth: true

    );
  }

}
