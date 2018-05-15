# Google-Sign-In
Simple Example of Shiny App Using Google Sign-In API

I wanted a simple authentication scheme using Google's federated login so that I didn't have to manage usernames and passwords. I don't need any special google API services beyond authentication. With this code, the server can use the input$g.id as a unique user identifer for personalized data.

Run this code from RStudio with

    runGitHub("dkulp2/Google-Sign-In", port=7445)
   
Your browser will open to 127.0.0.1, but Google credentials do not accept IP addresses, so re-open your browser to http://localhost:7445

This app uses the [Google Sign-In API](https://developers.google.com/identity/sign-in/web/), which does not require a secret. This demo uses a hard-coded credential that's defined 
just for testing and only works on localhost. Note that the API documentation strongly encourages using a verified token to access a user profile on the server side because I client can spoof an ID. However, I simply use the `Shiny.onInputChange` javascript call to marshall messages from the client to the server. I can't vouch for the security of `Shiny.onInputChange` or this app, in general. Use at your own risk. 

This code is an alternative to using [GoogleAuthR](https://github.com/MarkEdmondson1234/GoogleAuthR) and [GoogleID](https://github.com/MarkEdmondson1234/GoogleID), 
which was not persistent across sessions.
