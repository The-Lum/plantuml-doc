## Scalable Vector Graphics
[SVG](http://en.wikipedia.org/wiki/Scalable_Vector_Graphics) is a graphical format which is scalable. It means that when you zoom an image, you don't lose quality. So this format gives good printing result.

You can enable SVG generation by using ``-tsvg`` flag with the [command line](command-line).

You can also use ``format="svg"`` in the [Ant task definition](ant-task).

```
<target name="main">
  <plantuml dir="./src" format="svg" />
</target>
```

You can also generate SVG [directly from Java](api).


## Specific SkinParameter for SVG

### svgLinkTarget

You can change the ``target`` value in the generated SVG with the ``svgLinkTarget`` setting.

According to [the HTML specification](https://www.w3.org/TR/html52/browsers.html#valid-browsing-context-names-or-keywords), you can choose:
* `_blank`
* `_parent`
* `_self`
* `_top` *(by default, if ``svgLinkTarget`` is empty)*


```
@startuml
skinparam svgLinkTarget _parent
start
:[[http://plantuml.com]];
stop
@enduml
```

### pathHoverColor

There is also a setting `skinparam pathHoverColor` to specify a color change when the mouse pointer goes hover some links.

```
@startuml
skinparam pathHoverColor green
class Foo2 [[http://www.yahoo.com/Foo2]] {
  +double[] x
  +double y
}
Foo2 --> Foo3
@enduml
```
*[Ref. [QA-5453](https://forum.plantuml.net/5453)]*

### svgDimensionStyle

If you does not want to have the attribut `style`, `width` and `height` on the header of the SVG output, you can set `skinparam svgDimensionStyle false`. 


```
@startuml
skinparam svgDimensionStyle false

component a {
}
component b {
}
a -(0- b
@enduml
```
*[Ref. [QA-7334](https://forum.plantuml.net/7334)]*


## Specific Pragma for SVG

### svgSize

This directive `!pragma svgSize <U+hhhhh> XX` tells to PlantUML: "assume that the size of <U+hhhhh> is the same as 'XX' "

You can play with this directive:

* ``!pragma svgSize <U+hhhhh> XX``
* ``!pragma svgSize <U+hhhhh> I``

to find the best setting.


<plantuml>
@startuml
!pragma svgSize <U+1F610> XX

test: text <U+1F610>
test_size45: text <size:45><U+1F610>
@enduml
</plantuml>

You can use the `-P` [command-line](command-line) option to specify the pragma.
- Put it in quotes because the value includes spaces.
- You can use it multiple times. Example:

```
java -jar plantuml.jar "-PsvgSize=<U+1F610> XX" "-PsvgSize=<U+1F611> I"
```

*[Refs. [QA-12550](https://forum.plantuml.net/12550), [issue-582](https://github.com/plantuml/plantuml/issues/582)]*


