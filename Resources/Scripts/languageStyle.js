function changeLanguageSwitcherStyle() {
  const url = window.location.href;
  const parameters = url.split("/");

  parameters.shift();
  parameters.shift();
  parameters.shift();

  const language = parameters[0];
  const elements = document.getElementsByName("switcher-item");

  elements.forEach((element) => {
    const elementText = element.innerText.toLocaleLowerCase();

    if (language === "de") {
      if (elementText === "de") {
        element.classList.remove("switcher-item");
        element.classList.add("switcher-item-active");
      }
    } else if (language === "tr") {
      if (elementText === "tr") {
        element.classList.remove("switcher-item");
        element.classList.add("switcher-item-active");
      }
    } else {
      if (element.id === "default") {
        element.classList.remove("switcher-item");
        element.classList.add("switcher-item-active");
      }
    }
  });
}

changeLanguageSwitcherStyle();
