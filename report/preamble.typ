#import "template/style.typ": apply_styles
#import "template/titlepage.typ": titlepage

#let partial-titlepage(number, theme) = titlepage(
  "Преподаватель А.А.",
  ("", 4352, "Гиршович Д.И."),
  ("ка", 4352, "Слабнова Д.А."),
  ("", 4352, "Даричев Е.М."),
  department: [САПР],
  discipline: [Базы данных],
  number: [№] + number,
  theme: theme,
)

#let style(doc) = {
  show: apply_styles

  show heading.where(level: 2): set heading(
    numbering: (_, last) => numbering("Упражнение 1 " + sym.dash.em, last),
  )
  show heading.where(level: 3): set heading(
    numbering: (_, _, last) => numbering("1.", last),
  )
  show heading.where(level: 3): set text(weight: "regular")

  doc
}

#let console-result(body) = figure(
  body,
  caption: [Результат выполнения запроса.],
)
