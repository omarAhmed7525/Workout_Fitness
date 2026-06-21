#  Workout Fitness App

A complete **Flutter** fitness & wellness application covering the full user journey — from onboarding and personal setup to daily workout tracking, running analytics, meal planning, yoga, weight progress, scheduling, and settings.

> Built with a clean, modular architecture: reusable widgets, centralized dark theming, custom painters, and feature-based folder structure.

---

##  Overview

Workout Fitness is a multi-screen Flutter UI/UX project simulating a real-world fitness platform. It contains **25+ fully designed screens** organized into clear feature modules, with custom animated metrics (running dashboard with circular progress + clock-tick painter), interactive carousels, calendars, and a complete settings system.

The app uses a **dark, modern UI** built around a centralized color system (`TColor`), giving it a consistent, professional look across every screen.

---

##  Features

###  Onboarding & Setup
- Animated onboarding flow (`PageView`) with page indicators
- 3-step signup process:
  - **Step 1** — Welcome screen
  - **Step 2** — Fitness level selection (Beginner / Intermediate / Advanced)
  - **Step 3** — Personal details (birthday via `CupertinoDatePicker`, height/weight via `CupertinoPicker`, gender via `CupertinoSegmentedControl`, Apple Health toggle)

###  Dashboard
- **Menu View** — main dashboard with:
  - Collapsible header (`SliverAppBar` + `NestedScrollView`)
  - Grid-based feature navigation (`GridView.builder`)
  - Side drawer with glassmorphism blur effect (`BackdropFilter`)
- **Home View** — dual `CarouselSlider` sections for featured exercises and weekly training day cards, each linking to one of two Workout View variants

###  Running (the most advanced module)
- 5-tab running dashboard, each tab is an independent metric widget:
  - **Length** — distance covered with circular progress ring
  - **Speed** — pace tracking (min/km) with custom clock-tick dial
  - **Timer** — elapsed time with draggable slider control
  - **Heart** — heart rate (bpm) with a 34-point bar-chart history + circular gauge
  - **Density** — calorie burn (kCal) with a 20-bar intensity chart
- Custom `ClockTick` `CustomPainter` — draws a 24-point analog-clock-style dial around the progress rings
- `simple_circular_progress_bar` package for all circular gauges
- Dedicated **Running Settings** screen (GPS, Auto Push, Pause for Calls, Audio Feedback, Voice Volume, and more — mix of switches & sliders)

###  Exercise & Workout
- Two UI variants for browsing exercises (card-based with tabs, and video-thumbnail list)
- **Workout View** (2 variants) — full-bleed image cards with category tabs
- **Workout Detail View** — star rating (`flutter_rating_bar`), recommended exercises row, and a comments/responses section (`ResponsesRow`)

###  Meal Plan
- Two UI variants (Water/Food tabs)
- Date navigation (previous/next day)
- Meal cards with images, names, and descriptions

###  Weight Tracking
- Progress photo carousel (`CarouselSlider`) by date
- Current weight display card
- Motivational/explanatory tracking text block

###  Yoga
- Detail view with star rating, like/share actions, and instructional content

###  Schedule
- Interactive calendar (`flutter_calendar_carousel`)
- Custom day builder highlighting scheduled training dates
- Notes list tied to specific calendar days

###  Settings
- Switch, select, and slider-based setting rows (reusable row widgets)
- Language selection screen
- Social account connection screen (Facebook, Twitter, LinkedIn, Pinterest, Reddit, Tumblr) with active/inactive states

###  Tips
- List of fitness/nutrition tips
- Detail view with long-form educational content

---

##  Tech Stack

| Category | Details |
|---|---|
| Framework | Flutter (Dart) |
| State Management | `StatefulWidget` + `setState` |
| Navigation | `Navigator.push` / `pushAndRemoveUntil` |
| Theming | Centralized `TColor` color extension (dark theme) |
| Carousels | `carousel_slider` |
| Calendar | `flutter_calendar_carousel` |
| Ratings | `flutter_rating_bar` |
| Circular Gauges | `simple_circular_progress_bar` |
| Custom Drawing | `CustomPainter` (`ClockTick` — analog dial rendering) |
| Date Formatting | `intl` + custom `DateTime` extension |
| iOS-style Widgets | `CupertinoSwitch`, `CupertinoSegmentedControl`, `CupertinoDatePicker`, `CupertinoPicker`, `CupertinoAlertDialog` |
| Utilities | Custom `StateExtension` (alert dialogs, focus management) |

---

##  Project Structure

```
lib/
    main.dart

    common/
        color_extension.dart        # Centralized dark theme colors (TColor)
        extension.dart              # State & DateTime extensions, alert helper

    common_widget/
        round_button.dart
        border_button.dart
        tab_button.dart             # TabButton + TabButton2
        menu_cell.dart
        plan_row.dart
        exercises_row.dart
        response_row.dart
        connect_row.dart
        language_row.dart
        tip_row.dart
        fitness_level_selector.dart
        select_datetime.dart
        select_picker.dart
        setting_switch_row.dart
        setting_select_row.dart
        setting_slider_row.dart
        clock_tick.dart             # CustomPainter for analog dial ticks
        running_length_view.dart
        running_speed_view.dart
        running_timer_view.dart
        running_heart_view.dart
        running_density_view.dart
        ruuing_top_button.dart

    view/
        login/
            on_boarding_view.dart
            step1_view.dart
            step2_view.dart
            step3_view.dart

        menu/
            menu_view.dart
            yoga_view.dart

        home/
            home_view.dart

        exercise/
            exercise_view.dart
            exercise_view_2.dart

        meal_plan/
            meal_plan_view.dart
            meal_plan_view_2.dart

        weight/
            weight_view.dart

        running/
            running_view.dart
            running_setting_view.dart

        schedule/
            schedule_view.dart

        settings/
            setting_view.dart
            select_language_view.dart
            connect_view.dart
        tips/
            tips_view.dart
            tips_details_view.dart

        workout/
            workout_view.dart
            workout_view_2.dart
            workout_detail_view.dart
---

##  Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed
- Android Studio / VS Code with Flutter & Dart plugins
- An emulator or physical device

### Installation

```bash
# Clone the repository
git clone https://github.com/omarAhmed7525/Workout_Fitness.git
cd Workout_Fitness

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Dependencies (pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^latest
  flutter_rating_bar: ^latest
  flutter_calendar_carousel: ^latest
  simple_circular_progress_bar: ^latest
  intl: ^latest
```

---

##  Theming

All colors live in `lib/common/color_extension.dart` as a single source of truth (dark theme: deep navy background, cyan/blue primary accent, light gray secondary text). 


##  Author

**Omar Ahmed**
Flutter Developer | Alexandria, Egypt
