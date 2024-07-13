# Details

Date : 2024-07-08 09:41:01

Directory c:\\kodlar ve egitimler\\flutter_projeler\\flutter_maps_note\\flutter_maps_note\\lib

Total : 70 files,  3300 codes, 256 comments, 543 blanks, all 4099 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [lib/constants/enum/api_keys.dart](/lib/constants/enum/api_keys.dart) | Dart | 13 | 0 | 2 | 15 |
| [lib/constants/enum/base_url.dart](/lib/constants/enum/base_url.dart) | Dart | 11 | 0 | 2 | 13 |
| [lib/constants/enum/locale_cache_keys.dart](/lib/constants/enum/locale_cache_keys.dart) | Dart | 5 | 1 | 2 | 8 |
| [lib/constants/enum/locales.dart](/lib/constants/enum/locales.dart) | Dart | 7 | 5 | 7 | 19 |
| [lib/constants/enum/search_endpoint.dart](/lib/constants/enum/search_endpoint.dart) | Dart | 30 | 1 | 4 | 35 |
| [lib/constants/utility/general_padding.dart](/lib/constants/utility/general_padding.dart) | Dart | 0 | 1 | 2 | 3 |
| [lib/constants/utility/string_constants.dart](/lib/constants/utility/string_constants.dart) | Dart | 9 | 8 | 7 | 24 |
| [lib/core/cache/hive/hive_local_storage_manager.dart](/lib/core/cache/hive/hive_local_storage_manager.dart) | Dart | 7 | 5 | 5 | 17 |
| [lib/core/cache/hive/hive_local_storage_service.dart](/lib/core/cache/hive/hive_local_storage_service.dart) | Dart | 42 | 3 | 15 | 60 |
| [lib/core/cache/shared_preferences/shared_preferences_manager.dart](/lib/core/cache/shared_preferences/shared_preferences_manager.dart) | Dart | 9 | 7 | 7 | 23 |
| [lib/core/cache/shared_preferences/shared_preferences_service.dart](/lib/core/cache/shared_preferences/shared_preferences_service.dart) | Dart | 31 | 2 | 6 | 39 |
| [lib/core/localization/custom_localization.dart](/lib/core/localization/custom_localization.dart) | Dart | 30 | 4 | 9 | 43 |
| [lib/core/localization/locale_keys.g.dart](/lib/core/localization/locale_keys.g.dart) | Dart | 70 | 1 | 3 | 74 |
| [lib/feature/detail_page/detail_page.dart](/lib/feature/detail_page/detail_page.dart) | Dart | 33 | 0 | 5 | 38 |
| [lib/feature/home/bottom_sheet/cubit/bottom_sheet_cubit.dart](/lib/feature/home/bottom_sheet/cubit/bottom_sheet_cubit.dart) | Dart | 15 | 3 | 7 | 25 |
| [lib/feature/home/bottom_sheet/cubit/bottom_sheet_state.dart](/lib/feature/home/bottom_sheet/cubit/bottom_sheet_state.dart) | Dart | 16 | 3 | 8 | 27 |
| [lib/feature/home/bottom_sheet/custom_bottom_sheet.dart](/lib/feature/home/bottom_sheet/custom_bottom_sheet.dart) | Dart | 305 | 11 | 34 | 350 |
| [lib/feature/home/bottom_sheet/custom_bottom_sheet_mixin.dart](/lib/feature/home/bottom_sheet/custom_bottom_sheet_mixin.dart) | Dart | 8 | 2 | 3 | 13 |
| [lib/feature/home/cubit/home_cubit.dart](/lib/feature/home/cubit/home_cubit.dart) | Dart | 152 | 9 | 15 | 176 |
| [lib/feature/home/cubit/home_state.dart](/lib/feature/home/cubit/home_state.dart) | Dart | 20 | 1 | 9 | 30 |
| [lib/feature/home/custom_search_delegate/custom_search_delegate.dart](/lib/feature/home/custom_search_delegate/custom_search_delegate.dart) | Dart | 129 | 17 | 14 | 160 |
| [lib/feature/home/home_page_view.dart](/lib/feature/home/home_page_view.dart) | Dart | 126 | 45 | 18 | 189 |
| [lib/feature/onboard_pages/app_explain_page.dart](/lib/feature/onboard_pages/app_explain_page.dart) | Dart | 0 | 1 | 0 | 1 |
| [lib/feature/onboard_pages/base_class/onboard_page_base_class.dart](/lib/feature/onboard_pages/base_class/onboard_page_base_class.dart) | Dart | 34 | 5 | 5 | 44 |
| [lib/feature/onboard_pages/location/cubit/location_cubit.dart](/lib/feature/onboard_pages/location/cubit/location_cubit.dart) | Dart | 33 | 6 | 8 | 47 |
| [lib/feature/onboard_pages/location/cubit/location_state.dart](/lib/feature/onboard_pages/location/cubit/location_state.dart) | Dart | 28 | 3 | 5 | 36 |
| [lib/feature/onboard_pages/location/location_explain_page.dart](/lib/feature/onboard_pages/location/location_explain_page.dart) | Dart | 111 | 4 | 13 | 128 |
| [lib/feature/onboard_pages/welcome_to_app_page.dart](/lib/feature/onboard_pages/welcome_to_app_page.dart) | Dart | 34 | 2 | 3 | 39 |
| [lib/feature/save_page/cubit/save_cubit.dart](/lib/feature/save_page/cubit/save_cubit.dart) | Dart | 29 | 1 | 10 | 40 |
| [lib/feature/save_page/cubit/save_state.dart](/lib/feature/save_page/cubit/save_state.dart) | Dart | 23 | 0 | 6 | 29 |
| [lib/feature/save_page/save_page.dart](/lib/feature/save_page/save_page.dart) | Dart | 179 | 3 | 9 | 191 |
| [lib/feature/save_page/save_page_appbar/save_page_custom_appbar.dart](/lib/feature/save_page/save_page_appbar/save_page_custom_appbar.dart) | Dart | 23 | 0 | 2 | 25 |
| [lib/feature/settings_page/cubit/settingspage_cubit.dart](/lib/feature/settings_page/cubit/settingspage_cubit.dart) | Dart | 7 | 0 | 5 | 12 |
| [lib/feature/settings_page/cubit/settingspage_state.dart](/lib/feature/settings_page/cubit/settingspage_state.dart) | Dart | 6 | 1 | 6 | 13 |
| [lib/feature/settings_page/settings_page.dart](/lib/feature/settings_page/settings_page.dart) | Dart | 115 | 1 | 7 | 123 |
| [lib/feature/splash_screen/cubit/splash_cubit.dart](/lib/feature/splash_screen/cubit/splash_cubit.dart) | Dart | 34 | 8 | 9 | 51 |
| [lib/feature/splash_screen/cubit/splash_state.dart](/lib/feature/splash_screen/cubit/splash_state.dart) | Dart | 28 | 4 | 7 | 39 |
| [lib/feature/splash_screen/splash_page_view.dart](/lib/feature/splash_screen/splash_page_view.dart) | Dart | 58 | 3 | 5 | 66 |
| [lib/feature/splash_screen/splash_screen_mixin.dart](/lib/feature/splash_screen/splash_screen_mixin.dart) | Dart | 18 | 9 | 9 | 36 |
| [lib/get_it.dart](/lib/get_it.dart) | Dart | 7 | 1 | 4 | 12 |
| [lib/main.dart](/lib/main.dart) | Dart | 36 | 1 | 9 | 46 |
| [lib/models/google_maps_search_model/google_maps_search_model.dart](/lib/models/google_maps_search_model/google_maps_search_model.dart) | Dart | 240 | 0 | 51 | 291 |
| [lib/models/google_maps_search_model/google_maps_search_model.g.dart](/lib/models/google_maps_search_model/google_maps_search_model.g.dart) | Dart | 96 | 4 | 19 | 119 |
| [lib/models/google_maps_search_model/google_search_image_model.dart](/lib/models/google_maps_search_model/google_search_image_model.dart) | Dart | 29 | 1 | 10 | 40 |
| [lib/models/google_maps_search_model/google_search_image_model.g.dart](/lib/models/google_maps_search_model/google_search_image_model.g.dart) | Dart | 11 | 4 | 5 | 20 |
| [lib/models/local_storage_model/save_location.dart](/lib/models/local_storage_model/save_location.dart) | Dart | 28 | 1 | 12 | 41 |
| [lib/models/local_storage_model/save_location.g.dart](/lib/models/local_storage_model/save_location.g.dart) | Dart | 48 | 4 | 8 | 60 |
| [lib/models/test/test_model.dart](/lib/models/test/test_model.dart) | Dart | 239 | 0 | 32 | 271 |
| [lib/services/google_maps/image/google_search_response_image.dart](/lib/services/google_maps/image/google_search_response_image.dart) | Dart | 11 | 1 | 2 | 14 |
| [lib/services/google_maps/search/google_maps_search.dart](/lib/services/google_maps/search/google_maps_search.dart) | Dart | 11 | 0 | 2 | 13 |
| [lib/services/network_services/network_service_manager.dart](/lib/services/network_services/network_service_manager.dart) | Dart | 42 | 0 | 4 | 46 |
| [lib/services/network_services/network_services_interface.dart](/lib/services/network_services/network_services_interface.dart) | Dart | 12 | 1 | 5 | 18 |
| [lib/utility/func/general/general_func.dart](/lib/utility/func/general/general_func.dart) | Dart | 148 | 12 | 10 | 170 |
| [lib/utility/func/validate/validate_fun.dart](/lib/utility/func/validate/validate_fun.dart) | Dart | 16 | 2 | 2 | 20 |
| [lib/utility/widget/alert_dialog/detail_dialog.dart](/lib/utility/widget/alert_dialog/detail_dialog.dart) | Dart | 98 | 4 | 2 | 104 |
| [lib/utility/widget/alert_dialog/positive_negative_alert_dialog.dart](/lib/utility/widget/alert_dialog/positive_negative_alert_dialog.dart) | Dart | 34 | 0 | 3 | 37 |
| [lib/utility/widget/base_widget/base_widget.dart](/lib/utility/widget/base_widget/base_widget.dart) | Dart | 25 | 0 | 6 | 31 |
| [lib/utility/widget/bottom_bar/cubit/bottombar_view_model.dart](/lib/utility/widget/bottom_bar/cubit/bottombar_view_model.dart) | Dart | 10 | 3 | 8 | 21 |
| [lib/utility/widget/bottom_bar/cubit/bottombar_view_state.dart](/lib/utility/widget/bottom_bar/cubit/bottombar_view_state.dart) | Dart | 15 | 3 | 5 | 23 |
| [lib/utility/widget/bottom_bar/custom_bottombar.dart](/lib/utility/widget/bottom_bar/custom_bottombar.dart) | Dart | 99 | 3 | 10 | 112 |
| [lib/utility/widget/buttons/bottom_sheet_button/custom_bottom_sheet_button.dart](/lib/utility/widget/buttons/bottom_sheet_button/custom_bottom_sheet_button.dart) | Dart | 15 | 3 | 4 | 22 |
| [lib/utility/widget/buttons/custom_general_button.dart](/lib/utility/widget/buttons/custom_general_button.dart) | Dart | 34 | 11 | 10 | 55 |
| [lib/utility/widget/buttons/normal_buttom/normal_buttons.dart](/lib/utility/widget/buttons/normal_buttom/normal_buttons.dart) | Dart | 13 | 3 | 3 | 19 |
| [lib/utility/widget/custom_text_form_field/custom_text_form_field.dart](/lib/utility/widget/custom_text_form_field/custom_text_form_field.dart) | Dart | 21 | 1 | 3 | 25 |
| [lib/utility/widget/dropdown_button_formfield/custom_dropdown_button_form_field.dart](/lib/utility/widget/dropdown_button_formfield/custom_dropdown_button_form_field.dart) | Dart | 28 | 1 | 2 | 31 |
| [lib/utility/widget/texts/center_text.dart](/lib/utility/widget/texts/center_text.dart) | Dart | 16 | 2 | 3 | 21 |
| [lib/utility/widget/texts/info_text.dart](/lib/utility/widget/texts/info_text.dart) | Dart | 42 | 0 | 4 | 46 |
| [lib/utility/widget/texts/normal_text.dart](/lib/utility/widget/texts/normal_text.dart) | Dart | 19 | 3 | 4 | 26 |
| [lib/utility/widget/texts/text_base_class.dart](/lib/utility/widget/texts/text_base_class.dart) | Dart | 17 | 4 | 5 | 26 |
| [lib/utility/widget/toast_message.dart](/lib/utility/widget/toast_message.dart) | Dart | 12 | 3 | 3 | 18 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)