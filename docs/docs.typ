#import "@preview/tidy:0.4.3"
#import "../src/lib.typ" as lib
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *

#show: codly-init.with()
#codly(languages: codly-languages)

#show heading.where(level: 1): it => align(center, it)

#heading(outlined: false)[Vienna-Tech - Template Documentation]
#align(center, heading(level: 2, [v.1.1.0], outlined: false))
#v(1cm)
== Example Usage
```typ
#import "@preview/vienna-tech:1.1.0": *

// Useing the configuration
#show: tuw-thesis.with(
  header-title: "Instruktionen zur Abfassung der Bachelorarbeit",
)
#maketitle(
  title: [Instruktionen zur Abfassung der Bachelorarbeit],
  thesis-type: [Bachelorarbeit],
  authors: (
    (
      name:"Vorname Nachname",
      email: "email@email.com",
      matrnr: "12345678",
    ),
  ),
)
```
#outline(depth: 3)
#pagebreak()

#let doc-styles = tidy.parse-module(read("../src/styles.typ"))
#let doc-constructors = tidy.parse-module(read("../src/constructors.typ"))
#let doc-utils = tidy.parse-module(read("../src/utils.typ"))

== Styles of the Template
The following styles or functions can be used to set the formatting of the
document.
#tidy.show-module(doc-styles, style: tidy.styles.default)

#pagebreak()
== Constructors of the Template
These constructors construct certain parts of the thesis.
#tidy.show-module(doc-constructors, style: tidy.styles.default)

// == Utilitys of the Template
// A couple of  global variables and function used throughout the document.
// #tidy.show-module(doc-utils, style: tidy.styles.default)

== Further Functions
=== fancy-typst
This function will output a fancy representation of the word _typst_ and looks
like this: #lib.fancy-typst

This function might be used like this:
```typ
#show "typst": fancy-typst
```
=== fancy-latex
This function will output a fancy representation of the word _Latex_ and looks
like this: #lib.fancy-latex

This function might be used like this:
```typ
#show "typst": fancy-latex
```

