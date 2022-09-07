#!/usr/bin/env bash
# Transform <plantuml> balise to code ``` definition
perl -i -pe 's|<plantuml>|```plantuml|g; s|</plantuml>|```|g' site/en/*.md
# fix: Liquid syntax error (line 65) of a_begin_for_this_wiki.md
perl -i -pe 's/({{[^\|]*?)\|/`$1`\|/g' site/en/a_begin_for_this_wiki.md
