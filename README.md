# [tugcanonbas.com](https://tugcanonbas.com)

This is the source code for my personal website. It is built using [Swift](https://swift.org), [Vapor](https://vapor.codes) and [Plot](https://github.com/JohnSundell/Plot).

## Technologies and Packages Used

- [Swift](https://swift.org) is a general-purpose programming language that's approachable for newcomers and powerful for experts. It is fast, modern, safe, and a joy to write.

---

- [Vapor](https://vapor.codes) is an HTTP web framework for Swift. It provides a beautifully expressive and easy-to-use foundation for your next website, API, or cloud project.

---

- [Plot](https://github.com/JohnSundell/Plot) is a domain-specific language (DSL) for writing type-safe HTML, XML and RSS in Swift. It can be used to build websites, documents and feeds, as a templating tool, or as a renderer for higher-level components and tools. It’s primary focus is on static site generation and Swift-based web development.

### Page protocol

Page is a protocol that defines a page in the website. It has a language, title, navigation, localization text, layout, head, fav icon and body. It also has a function that returns the HTML of the page.

### Layoutable protocol

Layoutable is a protocol that defines a layout. It has a `render` function that returns the given `Page` to HTML.
