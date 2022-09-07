## PlantUML for the impatient

The easiest way to test PlantUML is in an online solution that has PlantUML embedded, such as our [online server](https://www.plantuml.com/plantuml).


## Local installation

After testing, you may want to [install PlantUML locally](faq-install).

You need these things to run PlantUML:

* [Java](https://www.java.com/en/download/)
* [Graphviz](graphviz-dot) (optional - you don't need this if you only need [sequence diagrams](sequence-diagram) and [activity (beta) diagrams](activity-diagram-beta))

Installed the above? Then simply download [plantuml.jar](http://sourceforge.net/projects/plantuml/files/plantuml.jar/download) and run it to open PlantUML's [graphical user interface](gui). There is no need to unpack or install anything.


## Run PlantUML from the command line

Use PlantUML's [command line](command-line) syntax to [include it in your own scripts or documentation tools](running).

1. Create a text file with PlantUML commands, like this example called ``sequenceDiagram.txt``:

```
@startuml
Alice -> Bob: test
@enduml
```

2. Run (or have your software call) PlantUML, using ``sequenceDiagram.txt`` as input. The output is an image, which either appears in the other software, or is written to an image file on disk.\nFor example:

```
java -jar plantuml.jar sequenceDiagram.txt
```

This outputs your sequence diagram to a file called ``sequenceDiagram.png``.


