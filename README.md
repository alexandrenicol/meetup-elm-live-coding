# Elm taught me how to code againg

Brighton Web Development Meetup - June 2025

## Alex's notes

This is the repo I've used to do the live coding section of the talk

The penultimate commit is more or less where I've left it at the end of the talk

The commit before that is where it was at the beginned of the talk, before refactoring

## Vite Elm Template

[![ci](https://github.com/lindsaykwardell/vite-elm-template/actions/workflows/ci.yml/badge.svg)](https://github.com/lindsaykwardell/vite-elm-template/actions/workflows/ci.yml)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-908a85?logo=gitpod)](https://gitpod.io/#https://github.com/lindsaykwardell/vite-elm-template)

A default template for building Elm applications using Vite. Includes hot-module reload of Elm modules (courtesy of `vite-plugin-elm`).

> Vite (French word for "fast", pronounced /vit/) is a build tool that aims to provide a faster and leaner development experience for modern web projects.

> Elm is a functional language that compiles to JavaScript. It helps you make websites and web apps. It has a strong emphasis on simplicity and quality tooling.

Live demo site: https://vite-elm-template.netlify.app/

### Features

- [Hot Module Reload](https://github.com/hmsk/vite-plugin-elm) of all code in the app (including Elm)
- [Integration with Vite static asset handling](https://package.elm-lang.org/packages/hmsk/elm-vite-plugin-helper/latest/)
- Tooling installation via [elm-tooling](https://elm-tooling.github.io/elm-tooling-cli/)
  - Includes Elm, elm-format, elm-json, and elm-test-rs
- Basic unit test and [elm-review](https://package.elm-lang.org/packages/jfmengels/elm-review/latest/) examples
- Github Actions CI for running tests
- Recommends the [Elm VS Code extension](https://marketplace.visualstudio.com/items?itemName=Elmtooling.elm-ls-vscode)

For a single page app (SPA) version of this template, check out [`vite-elm-spa`](https://github.com/lindsaykwardell/vite-elm-spa)

### Get Started

```bash
# Clone the template locally, removing the template's Git log
npx tiged lindsaykwardell/vite-elm-template my-elm-app

# Enter the project, install dependencies, and get started!
cd my-elm-app
npm install
npm run dev
```

For more information about Vite, check out [Vite's official documentation.](https://vitejs.dev/)

To learn more about Elm, check out [Elm's official homepage](https://elm-lang.org/).
