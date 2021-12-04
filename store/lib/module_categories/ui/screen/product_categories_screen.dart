import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mandob_moshtarayat/generated/l10n.dart';
import 'package:mandob_moshtarayat/module_categories/model/products_categories_model.dart';
import 'package:mandob_moshtarayat/module_categories/request/create_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/update_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/state_manager/products_category_state_manager.dart';
import 'package:mandob_moshtarayat/module_categories/ui/state/product_category/product_categories_loading_state.dart';
import 'package:mandob_moshtarayat/module_categories/ui/state/product_category/product_categories_state.dart';
import 'package:mandob_moshtarayat/utils/components/custom_app_bar.dart';


@injectable
class ProductCategoriesScreen extends StatefulWidget {
  final ProductsCategoryStateManager _stateManager;

  ProductCategoriesScreen(this._stateManager);

  @override
  ProductCategoriesScreenState createState() => ProductCategoriesScreenState();
}

class ProductCategoriesScreenState extends State<ProductCategoriesScreen> {
  late ProductCategoriesState currentState;
  bool canAddCategories = true;

  @override
  void initState() {

    currentState = ProductCategoriesLoadingState(this);
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      widget._stateManager.getCategoryLevelOne(this);
    });
    widget._stateManager.stateStream.listen((event) {
      currentState = event;
      refresh();
    });
    super.initState();
  }

  void getStoreCategoriesLevelTwo(List<ProductsCategoryModel> categoriesOne,int id,String levelOneName) {

    widget._stateManager.getCategoryLevelTwo(this,categoriesOne,id,levelOneName);

  }
  void getStoreCategoriesLevelOne() {

    widget._stateManager.getCategoryLevelOne(this);

  }
  void getStoreProductLevelTwo(List<ProductsCategoryModel> categoriesOne,List<ProductsCategoryModel> categoriesTwo,int categoryID,String levelOneName,String levelTwoName) {
    widget._stateManager.getStoreProductLevelTwo(this,categoriesOne,categoriesTwo,categoryID,levelOneName,levelTwoName);
  }

  void updateProduct(UpdateProductRequest request,List<ProductsCategoryModel> levelOne,List<ProductsCategoryModel> levelTwo,{String? nameOne ,String? nameTwo}) {
    widget._stateManager.updateProduct(this,request,levelOne ,levelTwo,nameOne: nameOne,nameTwo: nameTwo);
  }

  void viewDeleteConfirm(){

  }

  void updateProductStatus(UpdateProductStatusRequest request,List<ProductsCategoryModel> levelOne,List<ProductsCategoryModel> levelTwo,{String? nameOne ,String? nameTwo}) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.warning,
        text: S.of(context).sureForDelete,
        onConfirmBtnTap: (){
          widget._stateManager.updateProductStatus(this,request,levelOne ,levelTwo,nameOne: nameOne,nameTwo: nameTwo);
          Navigator.pop(context);
        }
    );
  }
  void createProduct(CreateProductRequest request,List<ProductsCategoryModel> levelOne,List<ProductsCategoryModel> levelTwo , {String? nameOne ,String? nameTwo}) {
    widget._stateManager.createProduct(this,request,levelOne,levelTwo,nameOne: nameOne,nameTwo: nameTwo);
  }

  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }
 bool flagArgs = true;
  int? storeId;

  @override
  Widget build(BuildContext context) {
//    var args = ModalRoute.of(context)?.settings.arguments;
//    print('ddff');
//    if (args != null && flagArgs){
//      if (args is int) {
//        storeId = args;
//        flagArgs = false;
//        widget._stateManager.getProductsCategoryLevelOne(this);
//      }
//    }
    return Scaffold(
      appBar: CustomMandopAppBar.appBar(context,
          title: S.of(context).productCategories,),
      body: currentState.getUI(context),

    );
  }
}
