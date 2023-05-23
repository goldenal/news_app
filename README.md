# newsapp

The Flutter news project.

## Getting Started
Setting up Flutter on Windows:

Visit the Flutter SDK download page at https://flutter.dev/docs/get-started/install/windows and download the Flutter SDK for Windows.
Extract the downloaded file to a desired location on your computer.
Open the Start menu, search for "Edit environment variables for your account," and open it.
Click on the "Environment Variables" button.
In the "User variables" section, select "Path" and click on "Edit."
Click on "New" and add the path to the "bin" folder within the extracted Flutter SDK directory (e.g., C:\path\to\flutter\bin).
Click "OK" to save the changes.
Open a new Command Prompt or PowerShell window and run flutter doctor to verify the Flutter installation and to install any missing dependencies.


Setting up Flutter on Mac:

Visit the Flutter SDK download page at https://flutter.dev/docs/get-started/install/macos and download the Flutter SDK for macOS.
Open the downloaded file and drag the Flutter folder to a desired location on your computer (e.g., /Users/your-user-name/Documents/flutter).
Open a terminal window.
Use a text editor to open your shell profile file. For example, you can run open -e ~/.zshrc to open the .zshrc file if you're using Zsh.
Add the following line at the end of the file to set up the Flutter environment variables: export PATH="$PATH:/Users/your-user-name/Documents/flutter/bin".
Save the file and close it.
Run source ~/.zshrc (or the corresponding command for your shell) in the terminal window to apply the changes to your current session.
Run flutter doctor in the terminal to verify the Flutter installation and to install any missing dependencies.


This project was built with Flutter 3.10.1 • channel stable  and Tools • Dart 3.0.1 • DevTools 2.23.1


