# Google-Sign-In
Simple Example of Shiny App Using Google Sign-In API

Run this code from RStudio with

    runGitHub("dkulp2/Google-Sign-In", port=7445)
   
Your browser will open to 127.0.0.1, but Google credentials do not accept IP addresses, so re-open your browser to http://localhost:7445

This app uses the [Google Sign-In API](https://developers.google.com/identity/sign-in/web/), which does not require a secret. This demo uses a hard-coded credential that's defined 
just for testing and only works on localhost.

This code is an alternative to using [GoogleAuthR](https://github.com/MarkEdmondson1234/GoogleAuthR) and [GoogleID](https://github.com/MarkEdmondson1234/GoogleID), 
which was not persistent across sessions.
