# docker-scratch

Scripts to build and run a Scratch 3.0 web GUI.

## build

```bash
docker build -t myscratch .
```

## run

```bash
docker run --rm -it --name myscratch -p 8601:8601 myscratch
```

Open a browser to <http://localhost:8601>.

## see also

* [Scratch team's public demo instance](https://llk.github.io/scratch-gui/)

## reverse proxy tip

See [issue #5682 - Invalid Host header](https://github.com/LLK/scratch-gui/issues/5682).

## WARRANTY

This software comes with no warranty. See LICENSE.

## COPYLEFT AND LICENSE

* Copyright ©2023 Adam Monsen <haircut@gmail.com>
* License: AGPL v3 or later (see LICENSE)
