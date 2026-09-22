#{
  import "template/style.typ": apply_styles
  import "template/titlepage.typ": titlepage

  show: apply_styles

  titlepage(
    "Преподаватель А.А.",
    ("", 4352, "Даричев Е.М."),
    department: [САПР],
    discipline: [],
    number: [№1],
  )

  set par(
    justify: true,
    first-line-indent: (
      amount: 1.25cm,
      all: true,
    ),
    leading: 1em,
  )

  // outline(depth: 1)
  // counter(heading).update(0)
}
