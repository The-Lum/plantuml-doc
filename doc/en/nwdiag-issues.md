## Network diagram issues (nwdiag-issues)

This page lists issues on [nwdiag](nwdiag).


## Example *KO* on group of Peer networks

### Group on first
<plantuml>
@startuml
nwdiag {
    internet [ shape = cloud];
    internet -- router;

    group {
      color = "pink";
      app;
      db;
    }

    network proxy {
        router;
        app;
    }

    network default {
    	app;
        db;
    }
}
@enduml
</plantuml>

### Group on second
<plantuml>
@startuml
nwdiag {
    internet [ shape = cloud];
    internet -- router;

    network proxy {
        router;
        app;
    }

    group {
      color = "pink";
      app;
      db;
    }

    network default {
    	app;
        db;
    }
}
@enduml
</plantuml>
[[#FFAAAA#FIXME]] Why the line on proxy for 'db'? ('db' must be only on 'default network') [See example without group]


### Group on third
<plantuml>
@startuml
nwdiag {
    internet [ shape = cloud];
    internet -- router;

    network proxy {
        router;
        app;
    }
    network default {
    	app;
        db;
    }
    group {
      color = "pink";
      app;
      db;
    }
}
@enduml
</plantuml>

*[Ref. [Issue#408](https://github.com/plantuml/plantuml/issues/408) and [QA-12655](https://forum.plantuml.net/12655/nwdiag-overlapp-problem-with-3-newtorks?show=12661#c12661)]*


## Example *KO* with shape

1. Overlap of label for folder
1. Hexagon shape is missing

<plantuml>
@startuml
nwdiag {
network Network {
Folder [shape = folder]
Hexagon [shape = hexagon]
}
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
network Network {
Folder [shape = folder, description = "Test, long long label\nTest, long long label"]
Hexagon [shape = hexagon, description = "Test, long long label\nTest, long long label"]
}
}
@enduml
</plantuml>


## Borderline cases of nwdiag (test of number lines)

### Element or Server

* How many adress lines before overlap? *[Hints: 7 (tested on V1.2021.8)]*

<plantuml>
@startuml
nwdiag {
network Network {
server0 [address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\nAdress_line_8\nAdress_line_9"]
server1 [address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7"]
}
}
@enduml
</plantuml>


### Network

* How many adress lines before overlap? *[Hints: 7 or 16]*

<plantuml>
@startuml
nwdiag {
network Network1 {
address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\nAdress_line_8\nAdress_line_9"
server
}
network Network2 {
address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\nAdress_line_8\nAdress_line_9"
server
}
}
@enduml
</plantuml>
<plantuml>
@startuml
nwdiag {
network Network1 {
address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\nAdress_line_8\nAdress_line_9\nAdress_line_10\nAdress_line_11\nAdress_line_12\nAdress_line_13\nAdress_line_14\nAdress_line_15\nAdress_line_16\nAdress_line_17"
server [address = "\nAdress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\n"]
}
network Network2 {
address = "Adress_line_1\nAdress_line_2\nAdress_line_3\nAdress_line_4\nAdress_line_5\nAdress_line_6\nAdress_line_7\nAdress_line_8\nAdress_line_9\nAdress_line_10\nAdress_line_11\nAdress_line_12\nAdress_line_13\nAdress_line_14\nAdress_line_15\nAdress_line_16\nAdress_line_17"
server
}
}
@enduml
</plantuml>


## Example *KO* with incoming server (e.g. the Internet or Web)

<plantuml>
@startuml
nwdiag {
  web1 [shape = cloud]
  web2 [shape = cloud]
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  web1 [shape = cloud]
  web2 [shape = cloud]

  network {
    web1
    web2
  }
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  web1 [shape = cloud]
  web2 [shape = cloud]

  network {
    web1
    web2
    appli
  }
  network {
    appli
    db [shape = database]
  }
}
@enduml
</plantuml>

- Q?: What is the line on the top of web2 ?


## Minimal *KO* example...

<plantuml>
@startuml
nwdiag {
  a
  b
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  ok
  ko
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  1
  2
  network {
   1
   2
   3
   4
  }
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  1
  2
  3
  6
  network 1 {
   1
   2
   3
   4
   5
   6
  }
  network 2 {
   1
   2
   3
   4
  }
}
@enduml
</plantuml>


## Other internal networks (stretched) examples 

<plantuml>
@startuml
nwdiag {
  network {
    a;
    b;
    c;
  }
  a -- 1
  b -- 2
  c -- 3
}
@enduml
</plantuml>

<plantuml>
@startuml
nwdiag {
  network {
    a;
    b;
    c;
  }
  b -- 2
  c -- 3
}
@enduml
</plantuml>


## Example *KO* on of Peer networks


<plantuml>
@startuml
nwdiag {
    Internet [shape = cloud]
    Internet -- A
}
@enduml
</plantuml>

VS

<plantuml>
@startuml
nwdiag {
    Internet [shape = cloud]
    Internet -- A
    Internet -- B
}
@enduml
</plantuml>


## OK: Example with 3 or more groups
<plantuml>
@startuml
nwdiag {
  group {
    color = "#FFaaaa";
    web01;
    db01;
  }
  group {
    color = "#aaFFaa";
    web02;
    db02;
  }
  group {
    color = "#aaaaFF";
    web03;
    db03;
  }

  network dmz {
      web01;
      web02;
      web03;
  }
  network internal {
      web01;
      db01 ;
      web02;
      db02 ;
      web03;
      db03;
  }
}
@enduml
</plantuml>
*[Ref. [QA-13138](https://forum.plantuml.net/13138)]*

<plantuml>
@startuml
nwdiag {
  group {
    color = "#FFaaaa";
    web01;
    db01;
  }
  group {
    color = "#aaFFaa";
    web02;
    db02;
  }
  group {
    color = "#aaaaFF";
    web03;
    db03;
  }
  group {
    color = "#aaFFFF";
    web04;
    db04;
  }

  network dmz {
      web01;
      web02;
      web03;
      web04;
  }
  network internal {
      web01;
      db01 ;
      web02;
      db02 ;
      web03;
      db03;
      web04;
      db04;
  }
}
@enduml
</plantuml>

??? Seems to be corrected on V1.2021.10beta4-5+ *(but only on **opposite layout**)*


## Example *KO* on Goup of Peer networks between networks

### Group first: OK
<plantuml>
@startuml
nwdiag {
  group group02 {
    color = palegreen
    a02;
    a01;
  }
  network net01 {
    a01;
  }
  a01 -- a02;
  network net02 {
    a02;
  }
}
@enduml
</plantuml>

### Group at the end: KO

<plantuml>
@startuml
nwdiag {
  network net01 {
    a01;
  }
  a01 -- a02;
  network net02 {
    a02;
  }
  group group02 {
    color = pink
    a02;
    a01;
  }
}
@enduml
</plantuml>


