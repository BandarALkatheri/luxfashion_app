# luxfashion_app 

### Screenshots of the application 


 ### Splash & Intro Screens

### Home & Category Products Screens  

### Product Details & Cart Screens 

### Overview 📙
## The Flutter Grocery UI is a visually captivating and fully functional User Interface template for a grocery shopping application. This project aims to provide developers with a ready-to-use and customizable UI foundation, helping them to build delightful shopping apps quickly.


### Features 🌟
## - Clean Architecture  
## - Authentication enabled
## - User-friendly interface
## - Firebase for back-end
## - GetX Statemanagement
## - Toggle app theme to dark theme.


.
├── android          
├── assets                         
├── ios                           
├── lib                            
    ├── main.dart                    
    ├── utils
    │   ├── constants
    │   ├── device              
    │   ├── formatters                 
    │   ├── helpers            
    │   └── http   
    │   ├── local_storage        
    │   ├── logger              
    │   ├── theme                 
    │   ├── validators            
    │        
    ├── data
    │   ├── services                   
    │   └── repositories             
    ├── localization              
    ├── features    authentication                
    │   └── authentication
    │   └── personalization 
    │   └── shop 
    ├── localization                      
    └── common                       
    │   └── styles    
    │   └── widgets_login_signup    
    └── bindings                      


 .
├── android                         - contains files and folders required for running the application on an Android operating system.
├── assets                          - contains all images and fonts of your application.
├── ios                             - contains files required by the application to run the dart code on iOS platforms.
├── lib                             - Most important folder in the project, used to write most of the Dart code.
    ├── main.dart                   - starting point of the application
    ├── core
    │   ├── app_export.dart         - contains commonly used file imports 
    │   ├── constants               - contains all constants classes
    │   ├── errors                  - contains error handling classes                  
    │   ├── network                 - contains network related classes
    │   └── utils                   - contains common files and utilities of project
    ├── data
    │   ├── apiClient               - contains API calling methods 
    │   ├── models                  - contains request/response models 
    │   └── repository              - network repository
    ├── localization                - contains localization classes
    ├── presentation                - contains all screens and screen controllers
    │   └── screens                 - contains all screens
    ├── routes                      - contains all the routes of application
    └── theme                       - contains app theme and decoration classes
    └── widgets                     - contains all custom widget classes
