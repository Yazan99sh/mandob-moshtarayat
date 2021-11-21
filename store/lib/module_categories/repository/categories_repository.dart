import 'package:injectable/injectable.dart';
import 'package:mandob_moshtarayat/consts/urls.dart';
import 'package:mandob_moshtarayat/module_auth/service/auth_service/auth_service.dart';
import 'package:mandob_moshtarayat/module_categories/request/create_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/create_products_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/create_store_category_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/store_categories_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/update_product_category_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/update_product_request.dart';
import 'package:mandob_moshtarayat/module_categories/request/update_store_request.dart';
import 'package:mandob_moshtarayat/module_categories/response/products_category_response.dart';
import 'package:mandob_moshtarayat/module_categories/response/response.dart';
import 'package:mandob_moshtarayat/module_categories/response/store_categories_response.dart';
import 'package:mandob_moshtarayat/module_categories/response/store_products_response.dart';
import 'package:mandob_moshtarayat/module_network/http_client/http_client.dart';

@injectable
class CategoriesRepository {

  final ApiClient _apiClient;
  final AuthService _authService;

  CategoriesRepository(this._apiClient,this._authService);

  Future<StoreCategoriesResponse?> getStoreCategories() async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.get(Urls.STORE_CATEGORIES,
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return StoreCategoriesResponse.fromJson(response);
  }

  Future<ActionResponse?> addCategory(CreateStoreCategoryRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.post(Urls.CREATE_STORE_CATEGORIES,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }
  Future<ProductsCategoryResponse?> getProductsCategoryLevelTwo(int levelOne) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.get(Urls.CATEGORY_LEVEL_TWO + '$levelOne',
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ProductsCategoryResponse.fromJson(response);
  }

  Future<ProductsCategoryResponse?> getProductsCategoryLevelOne(int mainCat) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.get(Urls.CATEGORY_LEVEL_ONE + '$mainCat',
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ProductsCategoryResponse.fromJson(response);
  }
  Future<StoreProductsResponse?> getProducts(int id) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.get(Urls.GET_STORE_PRODUCT_BY_Category + '$id',
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return StoreProductsResponse.fromJson(response);
  }
  Future<StoreProductsResponse?> getStoreProducts() async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.get(Urls.GET_STORE_PRODUCT,
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return StoreProductsResponse.fromJson(response);
  }
  Future<ActionResponse?> createProductsCategory(CreateProductsCategoriesRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.post(Urls.CREATE_PRODUCTS_CATEGORY,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }
  Future<ActionResponse?> createProduct(CreateProductRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.post(Urls.CREATE_PRODUCTS,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }

  Future<ActionResponse?> updateStoreCategories(UpdateStoreCategoriesRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.put(Urls.UPDATE_STORE_CATEGORY,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }

  Future<ActionResponse?> updateStore(UpdateStoreRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.put(Urls.UPDATE_STORE,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }

  Future<ActionResponse?> updateProductCategory(UpdateProductCategoryRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.put(Urls.UPDATE_PRODUCT_CATEGORY,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }
  Future<ActionResponse?> updateProduct(UpdateProductRequest request) async {
    var token = await _authService.getToken();
    dynamic response = await _apiClient.put(Urls.UPDATE_PRODUCT,request.toJson(),
        headers: {'Authorization': 'Bearer ' + token.toString()});
    if (response == null) return null;
    return ActionResponse.fromJson(response);
  }

}
