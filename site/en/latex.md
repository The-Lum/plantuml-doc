## LaTeX

Starting from version 7997, PlantUML allows to generate diagrams into [LaTeX](http://en.wikipedia.org/wiki/LaTeX), thanks to [Tikz package](http://en.wikipedia.org/wiki/Tikz).

Note that this is still beta, and many things won't probably work. Since we do not want to spend time on features not used, we will wait for users [to report bugs here](http://forum.plantuml.net/1798/latex-tikz-support).

You just have to use the flag ``-tlatex`` with the [command line](command-line), or ``format="latex"`` with the [Ant task](ant-task).

If you want to include the LaTeX output directly into another LaTeX document you can use ``-tlatex:nopreamble``. This way PlantUML will only export the tikz-picture itself, without the document preamble.


## Class diagram example

```
@startuml
class Subscriber {
  subscriberId
}

class AccumUsage {
  subscriberId
}

class IpSession {
  ipAddress
  specificData
  sapcOriginStateId
  apnId
}

Subscriber "1" -[#blue]-> "1..*" IpSession
Subscriber "1" --> "0..1" AccumUsage
@enduml
```

[See result online](https://www.writelatex.com/read/pgkkspzgzgpb) (TODO: [#362](https://github.com/plantuml/plantuml/issues/362))


## Sequence diagram example

```
@startuml
Bob -> Alice: hello
return Ok
@enduml
```

[See result online](https://www.writelatex.com/read/vmrvxnvzytbr) (TODO: [#362](https://github.com/plantuml/plantuml/issues/362))


## Latex Links

If you use the `hyperref` package then you can make links to defined anchors within your Latex/PDF document.
For example, the second and last links below are to the Latx document:

```
@startuml
participant Bob   [[http://www.yahoo.com]]
participant Alice [[latex://resource-interaction]]
Bob -> Alice :    [[http://www.google.com]] hello
Bob -> Alice :    [[latex://resource-interaction]] interact
@enduml
```

*[Ref. [QA-3558](https://forum.plantuml.net/3558)]*


