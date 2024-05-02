
import 'package:enefty_icons/enefty_icons.dart';
import 'package:erp_app_boe_industry/utils/constants/string.dart';
import 'package:flutter/material.dart';

class MenuData {
  final String title;
  final IconData icon;
  final Function() onTap;

  const MenuData({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  static List<MenuData> fetchAdminitrationMenu(BuildContext context) {
    return [
      /*MenuData(
        icon: EneftyIcons.user_add_outline,
        title: Strings.users,
        onTap: () {
          
        },
      ),
      MenuData(
        icon: EneftyIcons.map_2_outline,
        title: Strings.providers,
        onTap: () {
          
        },
      ),
      MenuData(
        icon: EneftyIcons.category_2_outline,
        title: Strings.categories,
        onTap: () {
          
        },
      ),
      MenuData(
        icon: EneftyIcons.box_2_outline,
        title: Strings.products,
        onTap: () {
          
        },
      ),
      MenuData(
        icon: EneftyIcons.truck_outline,
        title: Strings.orders,
        onTap: () {
          
        },
      ),*/
    ];
  }

  static List<MenuData> fetchWarehouseMenu(context) {
    return [
      MenuData(
          icon: EneftyIcons.coin_2_outline,
          title: Strings.costCenter,
          onTap: () {
            /*Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CostCenterPage()));*/
          }),
      MenuData(
          icon: EneftyIcons.bag_2_outline,
          title: Strings.products,
          onTap: () {
            /*Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProductPage()));*/
          }),
      MenuData(
          icon: EneftyIcons.note_4_outline,
          title: Strings.movements,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.note_2_outline,
          title: Strings.warehouseSummary,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.note_2_outline,
          title: Strings.warehousereport,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.truck_fast_outline,
          title: Strings.inventory,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.truck_fast_outline,
          title: Strings.stockProducts,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.truck_fast_outline,
          title: Strings.outStockProducts,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.truck_fast_outline,
          title: Strings.productsList,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.shopping_cart_outline,
          title: Strings.orders,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.note_4_outline,
          title: Strings.replacementReport,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.setting_2_outline,
          title: Strings.config,
          onTap: () {
            
          }),
    ];
  }

  static List<MenuData> fetchItemsMenu(context) {
    return [
      /*MenuData(
          icon: EneftyIcons.document_2_bold,
          title: Strings.listings,
          onTap: () {
            
          }),
      MenuData(
          icon: EneftyIcons.chart_2_bold,
          title: "Ventas",
          onTap: () {
            
          }),*/
    ];
  }
}
