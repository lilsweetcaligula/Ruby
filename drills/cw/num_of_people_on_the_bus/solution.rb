def number(bus_stops)
    bus_stops.collect {
        |bus_stop| 
        bus_stop.reduce(:-)
    }.reduce(:+)
end
