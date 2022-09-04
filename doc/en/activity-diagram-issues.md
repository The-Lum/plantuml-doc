## Activity Diagram issues (activity-diagram-issues)

This page lists issues on [Activity Diagram](activity-diagram-beta).


## Backward Error on swim-lanes

<plantuml>
@startuml
|Swimlane1|
start
repeat :foo as starting label;
  :read data;
  :generate diagrams;
|Swimlane2|
backward:This is backward;
repeat while (more data?)
|Swimlane1|
stop
@enduml
</plantuml>

<plantuml>
@startuml
|Swimlane1|
start
repeat :foo as starting label;
  :read data;
|Swimlane2|
  :generate diagrams;
repeat while (more data?)
|Swimlane1|
stop
@enduml
</plantuml>

*[Ref. [QA-12427](https://forum.plantuml.net/12427)]*

----

<plantuml>
@startuml
|#AntiqueWhite|Sistem|
|Admin|
repeat :Generate Again;
:Generate Foo;
|Sistem|
:Bar;
backward: Do bar;
repeat while (Is foo?)  is (yes)
->no;
:finish foo;
stop
@enduml
</plantuml>

<plantuml>
@startuml
|Admin|
repeat :Generate Again;
:Generate Foo;
|#AntiqueWhite|Sistem|
:Bar;
backward: Do bar;
repeat while (Is foo?)  is (yes)
->no;
:finish foo;
stop
@enduml
</plantuml>

*[Ref. [QA-14473](https://forum.plantuml.net/14473)]*


## If test on swimlane

<plantuml>
@startuml
|Lane 1|
|Lane 2|
|Lane 1|
start
if (sure?) then (yes)
else (no)
    |Lane 2|
    :baz;
endif
|Lane 2|
:foo;
@enduml
</plantuml>

VS 

<plantuml>
@startuml
|Lane 2|
|Lane 1|
start
if (sure?) then (yes)
else (no)
    |Lane 2|
    :baz;
endif
|Lane 2|
:foo;
@enduml
</plantuml>


*[Ref. [QA-3689](https://forum.plantuml.net/3689)]*


## A example of `goto`

The first example of `goto` is broken...

<plantuml>
@startuml
title Example of QA-1626
:foo1;
label lab1
:foo2;
if (some test) then
  :foo3;
  goto lab1
else
  :foo4;
endif
stop
@enduml
</plantuml>

*[Ref. [QA-1626](https://forum.plantuml.net/1626/there-refer-existing-activity-inside-activitydiagram-goto?show=2342#a2342)]*


## Overlap of arrow on Switch [fixed on V1.2022.4+]

<plantuml>
@startuml
switch (Long long long Long long <b><color:red>long condition?)
case (Long long long long long long long long long case 1)
   :Action  1;
case (<b><color:red>Arrow Error\nLong long long long long long long long long case 2)
   :Action  2;
endswitch
footer \nObserved on:   1.2022.3b2\n(current version: %version())
@enduml
</plantuml>

or

<plantuml>
@startuml
<style>
activityDiagram {
  MaximumWidth 100
}
</style>
switch (Long long long Long long long condition?)
case (Long long long long long long long long long case 1)
   :Action  1;
case (<b><color:red>Arrow Error\nLong long long long long long long long long case 2)
   :Action  2;
endswitch
footer \nObserved on:   1.2022.3b2\n(current version: %version())
@enduml
</plantuml>

See: 
- [QA-14529](https://forum.plantuml.net/14529/activity-style-allow-style-diamond-internal-label-external)


