import '../order_screen/widgets/orders_item_widget.dart';import 'models/order_model.dart';import 'models/orders_item_model.dart';import 'package:blackevil2401_s_application3/core/app_export.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_leading_image.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/appbar_title.dart';import 'package:blackevil2401_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'provider/order_provider.dart';class OrderScreen extends StatefulWidget {const OrderScreen({Key? key}) : super(key: key);

@override OrderScreenState createState() =>  OrderScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => OrderProvider(), child: OrderScreen()); } 
 }
class OrderScreenState extends State<OrderScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 15.h, top: 19.v, right: 15.h), child: Consumer<OrderProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.0.v), child: SizedBox(width: 344.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.blue50)));}, itemCount: provider.orderModelObj.ordersItemList.length, itemBuilder: (context, index) {OrdersItemModel model = provider.orderModelObj.ordersItemList[index]; return OrdersItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft(context);}), title: AppbarTitle(text: "lbl_order".tr, margin: EdgeInsets.only(left: 12.h))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
