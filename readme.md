# Atlas

This is a POC on micro-frontends for learning purposes.

## Running

This project is dockerized, so all you need to run it is:

```sh
make build run
```

This will build the docker images and start the containers.

## Single SPA

After some research, I've choosen [Single Spa](https://single-spa.js.org/) as the
micro-frontends framework. It's possible to not use any framework, just as it's possible
to develop frontend applications without React/Vue/etc, but it increases complexity.

From the available frameworks, I picked this one due to the availability of documentation,
other frameworks seemed scarce, and this framework also seemed to follow a pattern that I
could easily wrap my head around.

## To Do

There are some smaller issues that I need to investigate:

### [ ] continuous restart

When running locally the pages seems to do random refreshes, it's not a major issue but it
will impact negatively on developer experience.

### [ ] global styled components

It seems that styled-components requires a singleton to work, so if two projects attempt to
have separate instances of it, it could crash the page. I have not validated this yet, and
it seems that it's possible to set a global version of it, but this would force all
micro-frontends to use the same version of it.

[See more here](https://github.com/filoxo/single-spa-example-shared-styled-components)

### [ ] hot reload

I need to verify if there's a way to setup hot reload. It seems it should work out of the
box, but maybe docker is getting in the way of it.
