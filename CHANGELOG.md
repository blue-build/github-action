# Changelog

## [1.2.0](https://github.com/blue-build/github-action/compare/v1.1.1...v1.2.0) (2024-03-12)


### Features

* add input to use unstable cli ([#17](https://github.com/blue-build/github-action/issues/17)) ([#26](https://github.com/blue-build/github-action/issues/26)) ([229504e](https://github.com/blue-build/github-action/commit/229504e5e1755dbd7b800a074f9800d88a46fc85))


### Bug Fixes

* Remove extra curly braces ([1e5f19a](https://github.com/blue-build/github-action/commit/1e5f19ac32e372e81e967a62f88cbd8b9bedfd1f))
* use docker to build images ([#16](https://github.com/blue-build/github-action/issues/16)) ([#29](https://github.com/blue-build/github-action/issues/29)) ([3475a0c](https://github.com/blue-build/github-action/commit/3475a0c8e793c7460b42f62c2d970edf2e3918b6))

## [1.1.1](https://github.com/blue-build/github-action/compare/v1.1.0...v1.1.1) (2024-02-26)


### Bug Fixes

* **release-please:** add id to release step to make subsequent steps work ([64942c5](https://github.com/blue-build/github-action/commit/64942c55e35e567dbd20df06f4583fe4004d9749))

## [1.1.0](https://github.com/blue-build/github-action/compare/v1.0.2...v1.1.0) (2024-02-25)


### Features

* add registry input ([#14](https://github.com/blue-build/github-action/issues/14)) ([9f6f8ed](https://github.com/blue-build/github-action/commit/9f6f8ed00bfc382d4027cb5626ed4e19908c9a5b))
* add release-please & multi-tag releases ([#12](https://github.com/blue-build/github-action/issues/12)) ([117a659](https://github.com/blue-build/github-action/commit/117a659ca3ce9c9b34d623acec1d392736d8158a))
* containerd mount for faster builds and cli version update ([#22](https://github.com/blue-build/github-action/issues/22)) ([aef8fcf](https://github.com/blue-build/github-action/commit/aef8fcff7a91c37eaa543269f8f0cab4dceab374))
* make maximizing build space optional ([#18](https://github.com/blue-build/github-action/issues/18)) ([3052739](https://github.com/blue-build/github-action/commit/305273971b397c8e9a73524600ec63672ed95227))


### Bug Fixes

* builds failing due to input desc examples being evaluated by github ([5d69b36](https://github.com/blue-build/github-action/commit/5d69b367446f05598400038a52eab06dc81bdf56))
* builds failing due to input desc examples being evaluated by github ([c0cabfd](https://github.com/blue-build/github-action/commit/c0cabfd6f6517e49a001ffbe2bd8d11d8d1af212))
* run build with cli container ([#15](https://github.com/blue-build/github-action/issues/15)) ([2cccc96](https://github.com/blue-build/github-action/commit/2cccc962ad4daae4741671898a494351a35a9af7))
