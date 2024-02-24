This is a new [**React Native**](https://reactnative.dev) project, bootstrapped using [`@react-native-community/cli`](https://github.com/react-native-community/cli).

# Getting Started

>**Note**: Make sure you have completed the [React Native - Environment Setup](https://reactnative.dev/docs/environment-setup) instructions till "Creating a new application" step, before proceeding.

## Step 1: Start the Metro Server

First, you will need to start **Metro**, the JavaScript _bundler_ that ships _with_ React Native.

To start Metro, run the following command from the _root_ of your React Native project:

```bash
# using npm
npm start

# OR using Yarn
yarn start
```

## Step 2: Start your Application

Let Metro Bundler run in its _own_ terminal. Open a _new_ terminal from the _root_ of your React Native project. Run the following command to start your _Android_ or _iOS_ app:

### For Android

```bash
# using npm
npm run android

# OR using Yarn
yarn android
```

### For iOS

```bash
# using npm
npm run ios

# OR using Yarn
yarn ios
```

If everything is set up _correctly_, you should see your new app running in your _Android Emulator_ or _iOS Simulator_ shortly provided you have set up your emulator/simulator correctly.

This is one way to run your app — you can also run it directly from within Android Studio and Xcode respectively.

## Step 3: Modifying your App

Now that you have successfully run the app, let's modify it.

1. Open `App.tsx` in your text editor of choice and edit some lines.
2. For **Android**: Press the <kbd>R</kbd> key twice or select **"Reload"** from the **Developer Menu** (<kbd>Ctrl</kbd> + <kbd>M</kbd> (on Window and Linux) or <kbd>Cmd ⌘</kbd> + <kbd>M</kbd> (on macOS)) to see your changes!

   For **iOS**: Hit <kbd>Cmd ⌘</kbd> + <kbd>R</kbd> in your iOS Simulator to reload the app and see your changes!

## Congratulations! :tada:

You've successfully run and modified your React Native App. :partying_face:

### Now what?

- If you want to add this new React Native code to an existing application, check out the [Integration guide](https://reactnative.dev/docs/integration-with-existing-apps).
- If you're curious to learn more about React Native, check out the [Introduction to React Native](https://reactnative.dev/docs/getting-started).

# Troubleshooting

If you can't get this to work, see the [Troubleshooting](https://reactnative.dev/docs/troubleshooting) page.


# User Authentication in React Native App

## Task Description
This React Native mobile application implements user authentication functionality to ensure secure access and data protection. Users can register, log in, and log out securely, with proper error handling and validation.

## Requirements
Mobile and laptop must be connected with same network

### React Native Framework
- Utilize React Native's authentication components or third-party authentication libraries for user authentication.
- Implement user registration, login, and logout functionality securely.

### Security
- Implement measures to prevent common security vulnerabilities such as CSRF (Cross-Site Request Forgery) and XSS (Cross-Site Scripting).
- Store user credentials securely using encryption algorithms or secure storage mechanisms.

## Implementation Details

### Authentication Components
This app utilizes React Native's built-in authentication components for user registration, login, and logout. Additionally, it integrates third-party libraries such as Firebase Authentication for enhanced security features.

### Security Measures
- CSRF Protection: Implemented CSRF tokens to prevent Cross-Site Request Forgery attacks. Tokens are generated per session and validated with each request.
- XSS Prevention: Sanitized user input and escaped output to prevent Cross-Site Scripting attacks.
- Secure Storage: User credentials are stored securely using encryption algorithms provided by the React Native framework or third-party libraries like AsyncStorage.

## Installation
1. Clone the repository: git clone <repository-url>
2. Navigate to the project directory: cd react-native-authentication-app
3. Install dependencies: npm install or yarn install

## Usage
1. Start the development server: npm start or yarn start
2. Open the app on your Android or iOS device using Expo or run it on an emulator/simulator.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or features you'd like to add.

## License
This project is licensed under the [MIT License](LICENSE).
