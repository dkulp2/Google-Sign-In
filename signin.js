function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  Shiny.onInputChange("g.id", profile.getId());
  Shiny.onInputChange("g.name", profile.getName());
  Shiny.onInputChange("g.image", profile.getImageUrl());
  Shiny.onInputChange("g.email", profile.getEmail());
}
function signOut() {
  var auth2 = gapi.auth2.getAuthInstance();
  auth2.signOut();
  Shiny.onInputChange("g.id", null);
  Shiny.onInputChange("g.name", null);
  Shiny.onInputChange("g.image", null);
  Shiny.onInputChange("g.email", null);
}
  
if (typeof gapi == 'undefined') {
  alert("Failed to load Google API.\nCheck your ad blocker.\nYou will not be able to authenticate.");
}
