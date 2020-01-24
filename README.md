## R docker image
This image contains R 3.5.0 compiled on Ubuntu 18.04.
It contains many installed packages like dplyr, Bioinstaller etc. See the `src/` dir for details of installed packages.
An example run is

```
docker run --rm -v `pwd`:/work vjbaskar/r:3.5.0 hw.R
```
