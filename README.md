# coffee_beans_task

A new Flutter project.

# Flutter Email Viewer App

Welcome to the Flutter Email Viewer App repository! This Flutter application is designed to provide a user-friendly and interactive experience for displaying sample emails. The app incorporates various features such as touch gestures, header scrolling, attachment support, and more, making it a powerful yet familiar tool for users.


## Features

1. **Email Content Display:**
    - Readable email content with support for touch gestures.

2. **Header Scrolling:**
    - Seamless scrolling of the header along with the email body.

3. **Attachment Support:**
    - View attachments within the email.

4. **Zoom and Scroll:**
    - Zoom and scroll operate on the complete page.

5. **Gmail-Like User Experience:**
    - UI designed to resemble the Gmail app.

6. **GetX State Management:**
    - Efficient state management using GetX.

7. **Named Routing with Lazy Loading:**
    - Organized navigation with lazy loading for optimal performance.

8. **Swipe to Delete:**
    - Interactive swipe-to-delete feature.

## Project Structure

```plaintext
lib/
 ├── app/
 │   ├── controllers/
 │   │   ├── screen_one_controller.dart
 │   │   ├── screen_two_controller.dart
 │   ├── bindings/
 │   │   ├── screen_one_binding.dart
 │   │   ├── screen_two_binding.dart
 │   ├── data/
 │   │   ├── models/
 │   │   │   ├── data_model.dart
 │   │   ├── repositories/
 │   ├── theme/
 │   │   ├── app_theme.dart
 │   │   ├── app_colors.dart
 │   │   ├── app_fonts.dart
 │   │   ├── app_styles.dart
 │   │   ├── app_values.dart
 │   ├── utils/
 │   │   ├── common_utils.dart
 │   ├── widgets/
 │   │   ├── custom_button.dart
 │   │   ├── custom_text_field.dart
 ├── core/
 │   ├── managers/
 │   │   ├── string_manager.dart
 │   │   ├── asset_manager.dart
 │   │   ├── color_manager.dart
 │   │   ├── font_manager.dart
 │   │   ├── style_manager.dart
 │   │   ├── theme_manager.dart
 │   │   ├── values_manager.dart
 ├── main.dart
 ├── screens/
 │   ├── screen_one/
 │   │   ├── screen_one.dart
 │   │   ├── widgets/
 │   │   │   ├── screen_one_widget.dart
 │   │   ├── screen_one_controller.dart
 │   │   ├── bindings/
 │   │   │   ├── screen_one_binding.dart
 │   ├── screen_two/
 │   │   ├── screen_two.dart
 │   │   ├── widgets/
 │   │   │   ├── screen_two_widget.dart
 │   │   ├── screen_two_controller.dart
 │   │   ├── bindings/
 │   │   │   ├── screen_two_binding.dart
 ├── routes/
 │   ├── app_pages.dart
