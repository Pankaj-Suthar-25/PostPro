# postpro

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



hii there i am working on project called 'postpro' it is an blog cms using flutter, firebase, cloudinary, MVVM and getx. and i have some brief overview of pages 'Home view Explore view Bookmark view Profile view Add story floating button

Add story floating button constant in every view Left Cancel button Right preview button 3 dot(edit story preview, add or edit topics, submit to a publication) WYSIWYG area Tool bar at bottom Format header, format quotes, format list, format link, add section, mention user, format code block, right side insert image Format header Predefined header, sub header, bold text style Format quotes Italic text style Format list Dot list format, number list Format link Dialog box with text filed add link add button Add section Will add space of 3 or 5 lines with --- in middle Add mention Will add @ and the we can add user Format code block Will add block for writing code over there Insert image Add image from internal storage or unsplash or take photo

Story preview view Back button, story preview Preview section Topic Field to goto add topic view Topic view Text field to add topic and recently added topic Publication Select publication Unlist story Publish button on bottom

Home view Top title Home notification button to notification view Category bar For you, following, featured, new, flutter, ios, design List view as per category Card Row Avatar in channel name by writer name Row Split Left Title Sub title or first line Right Image select or default first image of post Row Badge date applause comment dislike 3 dot

3 dot menu List menu More like this, less like this, save, share, follow author, follow publication, mute author, mute publication, report story

Explore view Search bar for search story Category (topic) bar likely category as selected Select topic to goto topic view Trending now List view Row same Row Split Left title, row left time ago right 3 dot Right image

Topic view Back button , Topic, share button to share topic Topic bar Topic tile Center Column Topic name , row left count followers right count stories, follow button Recommand stories Column Image, row sender, title, subtitles, row time ago applause bookmark icon 3 dot

Library view Your library, new list button List bar Your lists, saved list, highlights, reading history Card list Column Row User avatar, user name List name Row split Left Count stories, if private icon Right download icon, 3 dot (edit list, mark list, mark list private, delete list) Stories images

Profile view Left setting icon Row split Left User avatar Right column use name, count followers, count following View stats button, edit your profile button User bar Stories, lists, about Stories Select drop down bar (Public, Draft, unlisted, responses) Lists list view same About button to edit profile view

Edit profile view Back button , Edit profile, save button Row User avatar, choose an image button Name Name field Pronouns Pronouns text field Short bio Add description text field ' and authentication view which is not mention but add by yourself.


This is Folder Structure
# Navigate back to the root of the Flutter project
cd ..

# Create the necessary directories
mkdir -p lib/controllers
mkdir -p lib/models
mkdir -p lib/views/auth
mkdir -p lib/views/home
mkdir -p lib/views/explore
mkdir -p lib/views/bookmark
mkdir -p lib/views/profile
mkdir -p lib/views/add_story
mkdir -p lib/views/library
mkdir -p lib/widgets
mkdir -p lib/services
mkdir -p lib/utils
mkdir -p lib/themes

# Create the assets directory
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/fonts

# Create controller files
touch lib/controllers/auth_controller.dart
touch lib/controllers/home_controller.dart
touch lib/controllers/explore_controller.dart
touch lib/controllers/bookmark_controller.dart
touch lib/controllers/profile_controller.dart
touch lib/controllers/add_story_controller.dart
touch lib/controllers/topic_controller.dart

# Create model files
touch lib/models/user_model.dart
touch lib/models/story_model.dart
touch lib/models/topic_model.dart
touch lib/models/publication_model.dart
touch lib/models/list_model.dart

# Create view files
touch lib/views/auth/login_view.dart
touch lib/views/auth/signup_view.dart
touch lib/views/auth/forgot_password_view.dart

touch lib/views/home/home_view.dart
touch lib/views/home/story_card.dart
touch lib/views/home/category_bar.dart

touch lib/views/explore/explore_view.dart
touch lib/views/explore/trending_view.dart
touch lib/views/explore/topic_view.dart

touch lib/views/bookmark/bookmark_view.dart

touch lib/views/profile/profile_view.dart
touch lib/views/profile/edit_profile_view.dart
touch lib/views/profile/stats_view.dart

touch lib/views/add_story/add_story_view.dart
touch lib/views/add_story/story_preview_view.dart

touch lib/views/library/library_view.dart

# Create widget files
touch lib/widgets/custom_button.dart
touch lib/widgets/custom_text_field.dart
touch lib/widgets/story_list_item.dart
touch lib/widgets/category_chip.dart

# Create service files
touch lib/services/auth_service.dart
touch lib/services/story_service.dart
touch lib/services/topic_service.dart
touch lib/services/cloudinary_service.dart

# Create utility files
touch lib/utils/constants.dart
touch lib/utils/validators.dart
touch lib/utils/helpers.dart

# Create theme files
touch lib/themes/light_theme.dart
touch lib/themes/dark_theme.dart

In pubspec.yaml file i added 
'cupertino_icons: ^1.0.8
get: ^4.7.2
firebase_auth: ^5.5.2
cloud_firestore: ^5.6.6
firebase_core: ^3.13.0
cloudinary: ^1.2.0'


based on all this give me bash scripts one by one for each file in that scripts there is code of that file the full code not comment note like add this logic here or so i want you to  give the full in bash script format for all files one by one based on file structure i provided.
