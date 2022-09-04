## Timing Diagram Issues (timing-diagram-issues)

This page lists issues on [Timing Diagram](timing-diagram).


## Timing-diagram issues


## Tests of clock's pulse

### No pulse
<plantuml>
title period 10
clock C with period 10
</plantuml>

### pulse < period
<plantuml>
title period 10 pulse 0
clock C with period 10 pulse 0
</plantuml>

<plantuml>
title period 10 pulse 1
clock C with period 10 pulse 1
</plantuml>

<plantuml>
title period 10 pulse 5
clock C with period 10 pulse 5
</plantuml>

<plantuml>
title period 10 pulse 9
clock C with period 10 pulse 9
</plantuml>

### pulse = period
<plantuml>
title period 10 pulse 10
clock C with period 10 pulse 10
</plantuml>

### pulse > period
<plantuml>
title period 10 pulse 11
clock C with period 10 pulse 11
</plantuml>

<plantuml>
title period 10 pulse 15
clock C with period 10 pulse 15
</plantuml>

<plantuml>
title period 10 pulse 20
clock C with period 10 pulse 20
</plantuml>

### pulse >> period
<plantuml>
title period 10 pulse 50
clock C with period 10 pulse 50
</plantuml>


