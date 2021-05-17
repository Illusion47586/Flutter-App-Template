# Flutter-App-Template

This is my personal template for creating flutter apps.

There are different branches for different `architectures`. I currently use `Get Architecture`, hence I have made that, contributions are welcome.

### Structure
```bash
.
|-- lib
|   |-- core
|   |   |-- base
|   |   |   |-- base.dart
|   |   |   |-- dio.dart
|   |   |   |-- logger.dart
|   |   |-- constants
|   |   |-- models
|   |   |-- route
|   |   |   |-- router.dart
|   |   |-- services
|   |   |   |-- service_initializer.dart
|   |   |-- theme
|   |   |   |-- animations
|   |   |   |   |-- live_list_options.dart
|   |   |   |-- colors.dart
|   |   |   |-- size_config.dart
|   |   |   |-- spacing
|   |   |   |   |-- spacing.dart
|   |   |   |-- theme.dart
|   |   |   |-- theme_constants.dart
|   |   |   |-- typography.dart
|   |   |-- widgets
|   |       |-- background
|   |       |   |-- appbar.dart
|   |       |   |-- background.dart
|   |       |-- container
|   |-- generated_plugin_registrant.dart
|   |-- main.dart
|   |-- utilities
|   |   |-- main_functions.dart
|   |   |-- network_aware_mixin.dart
|   |   |-- status_bar_set.dart
|   |-- views
|       |-- controllers
|       |   |-- test_screen_controller.dart
|       |-- screens
|       |   |-- test_screen.dart
|       |-- widgets
|           |-- test_widget.dart
|-- pubspec.yaml
```

### Other details
`Manrope` is just my personal font of choice.
