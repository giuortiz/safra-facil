class SafraModel {
  int selectedItem;
  int selectedMonth;

  SafraModel({this.selectedItem, this.selectedMonth});

  SafraModel patchState({int selectedItem, int selectedMonth}) {
    return new SafraModel(
        selectedItem: selectedItem ?? this.selectedItem,
        selectedMonth: selectedMonth ?? this.selectedMonth);
  }
}
