---
title       : Time for light to travel to Earth
subtitle    : 
author      : Ian Kim
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Motivation 1

When looking at the night sky, it is not immediately obvious to many that the light being perceived
was actually emitted/reflected from the object at a point in time quite a bit in the past.
For the curious, this app allows a quick and easy way to find out how long it takes for light from objects in 
our Solar System to reach us.

--- .class #id 

## Motivation 2

Companies monitoring spacecraft have to account for this delay in signal transmission in order for proper
control. This app (although very simple) could be used to get a quick sense of how long transmission would take.

---

## Example calculation

The following is an example of the simple calculation being done by the app. 
In this example, the time taken (in minutes) for light from the Sun to reach Earth is calculated.


```r
distance <- 149600000000 # distance to Sun, in meters
speed_of_light <- 299792458  # units: ms-1
time_taken <- (distance/speed_of_light) / 60

time_taken
```

```
## [1] 8.316865
```

---

## Conclusion

Through the usage of this app, it can be seen that the time taken for light to reach Earth
from different planets varies significantly. 

This app is obviously extremely simple, making simplifications - for example, the distances of objects
from Earth vary depending on the points along their orbits around the Sun, but in the app, the 
average distance is used.

It is important for humanity to be curious about the environment beyond Earth. 
Recently we have seen accomplishments by space programs around the world, including the recent
flyby of Pluto.
Apps such as this one can help to get people interested in space exploration, which is good for
further development in many technologies that will benefit humanity.



