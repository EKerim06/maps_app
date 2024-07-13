# Diff Details

Date : 2024-07-08 09:41:01

Directory c:\\kodlar ve egitimler\\flutter_projeler\\flutter_maps_note\\flutter_maps_note\\lib

Total : 37 files,  903 codes, 54 comments, 97 blanks, all 1054 lines

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [lib/constants/enum/api_keys.dart](/lib/constants/enum/api_keys.dart) | Dart | 13 | 0 | 2 | 15 |
| [lib/constants/enum/base_url.dart](/lib/constants/enum/base_url.dart) | Dart | 11 | 0 | 2 | 13 |
| [lib/constants/enum/locale_cache_keys.dart](/lib/constants/enum/locale_cache_keys.dart) | Dart | 1 | 0 | 1 | 2 |
| [lib/constants/enum/search_endpoint.dart](/lib/constants/enum/search_endpoint.dart) | Dart | 30 | 1 | 4 | 35 |
| [lib/core/cache/shared_preferences/shared_preferences_manager.dart](/lib/core/cache/shared_preferences/shared_preferences_manager.dart) | Dart | 2 | 2 | 2 | 6 |
| [lib/core/cache/shared_preferences/shared_preferences_service.dart](/lib/core/cache/shared_preferences/shared_preferences_service.dart) | Dart | 13 | 0 | 1 | 14 |
| [lib/core/localization/locale_keys.g.dart](/lib/core/localization/locale_keys.g.dart) | Dart | 12 | 0 | 0 | 12 |
| [lib/core/models/google_maps_search_model/google_maps_search_model.dart](/lib/core/models/google_maps_search_model/google_maps_search_model.dart) | Dart | -233 | -1 | -59 | -293 |
| [lib/core/models/google_maps_search_model/google_maps_search_model.g.dart](/lib/core/models/google_maps_search_model/google_maps_search_model.g.dart) | Dart | -96 | -4 | -19 | -119 |
| [lib/core/models/local_storage_model/save_location.dart](/lib/core/models/local_storage_model/save_location.dart) | Dart | -22 | -1 | -9 | -32 |
| [lib/core/models/local_storage_model/save_location.g.dart](/lib/core/models/local_storage_model/save_location.g.dart) | Dart | -42 | -4 | -8 | -54 |
| [lib/feature/home/bottom_sheet/custom_bottom_sheet.dart](/lib/feature/home/bottom_sheet/custom_bottom_sheet.dart) | Dart | 9 | -18 | 0 | -9 |
| [lib/feature/home/bottom_sheet/custom_bottom_sheet_mixin.dart](/lib/feature/home/bottom_sheet/custom_bottom_sheet_mixin.dart) | Dart | -2 | 0 | -4 | -6 |
| [lib/feature/home/cubit/home_cubit.dart](/lib/feature/home/cubit/home_cubit.dart) | Dart | 105 | 8 | 5 | 118 |
| [lib/feature/home/custom_search_delegate/custom_search_delegate.dart](/lib/feature/home/custom_search_delegate/custom_search_delegate.dart) | Dart | 129 | 17 | 14 | 160 |
| [lib/feature/home/home_page_view.dart](/lib/feature/home/home_page_view.dart) | Dart | 36 | 35 | 4 | 75 |
| [lib/feature/save_page/save_page.dart](/lib/feature/save_page/save_page.dart) | Dart | 19 | 1 | 1 | 21 |
| [lib/feature/save_page/save_page_appbar/save_page_custom_appbar.dart](/lib/feature/save_page/save_page_appbar/save_page_custom_appbar.dart) | Dart | -8 | 0 | -1 | -9 |
| [lib/feature/settings_page/cubit/settingspage_cubit.dart](/lib/feature/settings_page/cubit/settingspage_cubit.dart) | Dart | 7 | 0 | 5 | 12 |
| [lib/feature/settings_page/cubit/settingspage_state.dart](/lib/feature/settings_page/cubit/settingspage_state.dart) | Dart | 6 | 1 | 6 | 13 |
| [lib/feature/settings_page/settings_page.dart](/lib/feature/settings_page/settings_page.dart) | Dart | 61 | 1 | 3 | 65 |
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
| [lib/utility/func/general/general_func.dart](/lib/utility/func/general/general_func.dart) | Dart | 69 | 0 | -1 | 68 |
| [lib/utility/func/validate/validate_fun.dart](/lib/utility/func/validate/validate_fun.dart) | Dart | 2 | 0 | -2 | 0 |
| [lib/utility/widget/alert_dialog/detail_dialog.dart](/lib/utility/widget/alert_dialog/detail_dialog.dart) | Dart | 15 | 0 | 0 | 15 |
| [lib/utility/widget/dropdown_button_formfield/custom_dropdown_button_form_field.dart](/lib/utility/widget/dropdown_button_formfield/custom_dropdown_button_form_field.dart) | Dart | 1 | 0 | 0 | 1 |
| [lib/utility/widget/texts/info_text.dart](/lib/utility/widget/texts/info_text.dart) | Dart | -2 | 0 | 0 | -2 |

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details