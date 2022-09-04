## EPS
[EPS](http://en.wikipedia.org/wiki/Encapsulated_PostScript) is
a graphical format which is scalable. It means that when you zoom an
image, you don't loose quality. So this format gives good printing
result.




## EPS Support
You can enable it by using ``-teps`` flag with the [command line](command-line).

You can also use ``format="eps"`` in the [ant task definition](ant-task).
```
<target name="main">
<plantuml dir="./src" format="eps" />
</target>
```



