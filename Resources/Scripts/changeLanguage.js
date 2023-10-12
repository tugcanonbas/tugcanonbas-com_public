function changeLanguage() {
  const url = window.location.href;
  const parameters = url.split("/");

  parameters.shift();
  parameters.shift();
  parameters.shift();

  const elements = document.getElementsByName("switcher-item");

  if (parameters[0] === "de" || parameters[0] === "tr") {
    parameters.shift();
  }

  for (let i = 0; i < elements.length; i++) {
    const elementText = elements[i].textContent.toLocaleLowerCase();

    if (elementText === "en") {
      elements[i].href = "/" + parameters.join("/");
    } else {
      elements[i].href = "/" + elementText + "/" + parameters.join("/");
    }
  }
}

changeLanguage();
