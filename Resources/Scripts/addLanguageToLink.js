function addLanguageToLink() {
  const url = window.location.href;
  const parameters = url.split("/");

  parameters.shift();
  parameters.shift();
  parameters.shift();

  const language = parameters[0];

  const elemenets = document.getElementsByName("language-link");

  window.addEventListener("load", () => {
    if (language === "de" || language === "tr") {
      elemenets.forEach((element) => {
        const originalHref = element.href.split("/");
        originalHref.shift();
        originalHref.shift();
        originalHref.shift();
        console.log(originalHref);

        const newHref = originalHref.join("/");

        element.href = newHref;
      });
    }
  });
}

addLanguageToLink();
