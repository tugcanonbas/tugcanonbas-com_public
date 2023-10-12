function getLanguage() {
  var userLang = navigator.language || navigator.userLanguage;
  if (userLang == "tr") {
    window.location.href = "/tr/home";
  } else if (userLang == "de") {
    window.location.href = "/de/home";
  } else {
    window.location.href = "/home";
  }
}

getLanguage();
