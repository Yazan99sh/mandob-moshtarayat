import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mandob_moshtarayat/generated/l10n.dart';
import 'package:mandob_moshtarayat/module_categories/model/products_categories_model.dart';
import 'package:mandob_moshtarayat/module_categories/model/products_model.dart';
import 'package:mandob_moshtarayat/module_categories/request/create_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/update_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/ui/screen/product_categories_screen.dart';
import 'package:mandob_moshtarayat/module_categories/ui/state/product_category/product_categories_state.dart';
import 'package:mandob_moshtarayat/module_categories/ui/widget/add_product_form.dart';
import 'package:mandob_moshtarayat/module_categories/ui/widget/product_component.dart';
import 'package:mandob_moshtarayat/utils/components/custom_list_view.dart';
import 'package:mandob_moshtarayat/utils/components/empty_screen.dart';
import 'package:mandob_moshtarayat/utils/components/error_screen.dart';
import 'package:mandob_moshtarayat/utils/components/progresive_image.dart';


class ProductCategoriesLoadedState extends ProductCategoriesState {
  final ProductCategoriesScreenState screenState;
  final String? error;
  final bool empty;
  final List<ProductsCategoryModel>? categoriesOne;
  final List<ProductsCategoryModel>? categoriesTwo;
  final List<ProductsModel>? productsModel;
  final int storeProductCategoryID;
  final String? nameOne;
  final String? nameTwo;

  ProductCategoriesLoadedState(this.screenState, this.categoriesOne,this.categoriesTwo,this.productsModel, this.storeProductCategoryID,
      {this.nameOne, this.nameTwo,this.empty = false, this.error})
      : super(screenState) {
    if (error != null) {
      screenState.canAddCategories = false;
      screenState.refresh();
    }
  }
    String? catId = '-1';
  ProductsCategoryModel? idOne;
  ProductsCategoryModel? idTwo;

  String? NameOne;
  String? NameTwo;
  @override
  Widget getUI(BuildContext context) {
    if (error != null) {
      return ErrorStateWidget(
        onRefresh: () {
          screenState.getStoreCategoriesLevelOne();
        },
        error: error,
      );
    } else if (empty) {
      return EmptyStateWidget(
          empty: S.current.emptyStaff,
          onRefresh: () {
            screenState.getStoreCategoriesLevelOne();
          });
    }
    return Container(
      width: double.maxFinite,
      child: Center(
        child: Container(
          constraints: BoxConstraints(
              maxWidth: 600
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Theme.of(context).backgroundColor,
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 4)),
                  child: Center(
                    child: DropdownButton(
                      value: idOne,
                      items: getChoicesCategoriesOne(),
                      onChanged: (v) {
                        v as ProductsCategoryModel;
                        idOne = v;
                        screenState.getStoreCategoriesLevelTwo(categoriesOne??[], int.parse(idOne!.id.toString()),idOne!.categoryName);
                      },
                      hint: Text(
                      nameOne ??  S.current.chooseCategory,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.arrow_drop_down_rounded),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      //color: Theme.of(context).backgroundColor,
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 4)),
                  child: Center(
                    child: DropdownButton(
                      value: idTwo,
                      items: getChoicesCategoriesTwo(),
                      onChanged: (v) {
                        v as ProductsCategoryModel;
                        idTwo = v;
                         screenState.getStoreProduct(categoriesOne??[], categoriesTwo??[], int.parse(idTwo!.id.toString()),nameOne??'',idTwo!.categoryName);
                      },
                      hint: Text(
                      nameTwo??  S.current.chooseCategory,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      underline: SizedBox(),
                      icon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.arrow_drop_down_rounded),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CustomListView.custom(children:getProducts()),
              ),
              ElevatedButton(
                onPressed: (){
                  if (productsModel != null){
                    print("storeProductCategoryID" +idTwo.toString());
                    showDialog(context: context, builder:(_){
                      return AddProductsForm(
                        state:this,
                        addProduct: (name,image,price,discount){
                          Navigator.of(context).pop();
                          screenState.createProduct(CreateProductRequest(
                              productName: name,
                              productImage: image,
                              productPrice: price,
                              discount: discount,
                              storeProductCategoryID: storeProductCategoryID,
                          ),categoriesOne??[],categoriesTwo??[]);
                        },
                      );
                    });
                  }else{
                    Fluttertoast.showToast(msg: S.of(context).chooseCategory);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(S.current.addProducts,style: TextStyle(
                      color: Colors.white
                  ),),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 3
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
  List<DropdownMenuItem<ProductsCategoryModel>> getChoicesCategoriesOne() {
    List<DropdownMenuItem<ProductsCategoryModel>> items = [];
    categoriesOne?.forEach((element) {
      items.add(DropdownMenuItem(
        value: element,
        child: Text(element.categoryName),
      ));
    });
    return items;
  }
  List<DropdownMenuItem<ProductsCategoryModel>> getChoicesCategoriesTwo() {
    List<DropdownMenuItem<ProductsCategoryModel>> items = [];
    categoriesTwo?.forEach((element) {
      items.add(DropdownMenuItem(
        value: element,
        child: Text(element.categoryName),
      ));
    });
    return items;
  }

  List<Widget> getProducts() {
    List<ProductComponent> widgets = [];
    if (productsModel == null) {
      return widgets;
    }

    if (productsModel!.isEmpty) return widgets;
    for (var element in productsModel!) {
      if (idTwo != null && idTwo != element.storeProductCategoryID.toString()) {
        continue;
      }
      widgets.add(
          ProductComponent(discount: element.discount.toString(),description: '',image: element.productImage.image??'',rating: 0,title: element.productName, productId: element.id.toString(),price: element.productPrice.toString(),)
      );
    }
    return widgets;
  }
}
