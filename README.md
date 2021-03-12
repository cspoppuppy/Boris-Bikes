# Boris Bikes

## Day 1

User story 1 & 2

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working


| Objects          | Messages         |
|------------------|------------------|
| person           |                  |
| docking station  | release bike     |
| bike             | working or not   |


person > docking station > release_bike > working?

## Day 2

User story

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

| Objects          | Messages         |
|------------------|------------------|
| member of public |                  |
| docking station  | dock bike        |
| docking station  | see bike         |

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

| Objects          | Messages                       |
|------------------|--------------------------------|
| member of public |                                |
| docking station  | not release when non available |

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

| Objects          | Messages                       |
|------------------|--------------------------------|
| maintainer       |                                |
| docking station  | not dock when full             |

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

| Objects          | Messages                       |
|------------------|--------------------------------|
| maintainer       |                                |
| docking station  | capacity of 20 bikes           |

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.

| Objects          | Messages                       |
|------------------|--------------------------------|
| maintainer       |                                |
| van              | deliver from dock to garage    |
| van              | collect from garage to dock    |

As a maintainer of the system,
So that members of the public can get usable bikes,
I'd like docking stations to ensure that returned entities are actually bikes

As a member of the public,
So that I can choose a particular bike of my preference,
I'd like to be able to specify which bike I receive.

| Objects          | Messages                       |
|------------------|--------------------------------|
| maintainer       |                                |
| docking station  | dock actual bikes only         |
| docking station  | release bike at choice         |

As a member of the public,
So that I can avoid the hassle of starting IRB,
I'd like a text interface that can be run from the command line.
