# Changelog

## [1.10.0](https://github.com/blue-build/github-action/compare/v1.9.1...v1.10.0) (2025-11-26)


### Features

* add options for build-chunked-oci ([#106](https://github.com/blue-build/github-action/issues/106)) ([07ff155](https://github.com/blue-build/github-action/commit/07ff1552f835c213bcb3d580a7178182874dcdde))
* add provenance verification ([#107](https://github.com/blue-build/github-action/issues/107)) ([5ff2e30](https://github.com/blue-build/github-action/commit/5ff2e30c5a437f552d999f735013c70f01204e9f))
* set container policy to validate Blue-Build cli signature ([#105](https://github.com/blue-build/github-action/issues/105)) ([c1c1e56](https://github.com/blue-build/github-action/commit/c1c1e56702055fb24f60660162e670203f977195))


### Bug Fixes

* enable sigstore attachments for container verification ([#111](https://github.com/blue-build/github-action/issues/111)) ([d150c94](https://github.com/blue-build/github-action/commit/d150c94be4ab0f45cbfddcf7cd3206df88323781))
* missing mkdir ([#113](https://github.com/blue-build/github-action/issues/113)) ([8484206](https://github.com/blue-build/github-action/commit/84842061ad1b98ed7419ab6601e516ec11be77ea))
* missing pubkey dir ([#109](https://github.com/blue-build/github-action/issues/109)) ([9c9c416](https://github.com/blue-build/github-action/commit/9c9c416c3ba9b043b01821496592224177ba3c49))
* set pipefail ([#112](https://github.com/blue-build/github-action/issues/112)) ([90c0826](https://github.com/blue-build/github-action/commit/90c0826fbf6b7ddeceea05748b2f7c851b8e64f3))
* shell scripting error ([#114](https://github.com/blue-build/github-action/issues/114)) ([82144b7](https://github.com/blue-build/github-action/commit/82144b7f48d7170874cc2b70abecd349f6938f21))
* typo in input validation step ([#115](https://github.com/blue-build/github-action/issues/115)) ([0235ef4](https://github.com/blue-build/github-action/commit/0235ef441cf360ca62916f796111c52f8947b32b))

## [1.9.1](https://github.com/blue-build/github-action/compare/v1.9.0...v1.9.1) (2025-09-04)


### Bug Fixes

* Use an array for the args ([#97](https://github.com/blue-build/github-action/issues/97)) ([13d8262](https://github.com/blue-build/github-action/commit/13d82627c8c845889a90b32360a9193802d23eaf))

## [1.9.0](https://github.com/blue-build/github-action/compare/v1.8.3...v1.9.0) (2025-09-02)


### Features

* add retry_push_count option to expose retry-push CLI options ([#91](https://github.com/blue-build/github-action/issues/91)) ([2c22aca](https://github.com/blue-build/github-action/commit/2c22acac43b3d90f1a02cf7ebf9bbc39cd845b4d))

## [1.8.2](https://github.com/blue-build/github-action/compare/v1.8.1...v1.8.2) (2025-06-22)


### Bug Fixes

* cosign version installer tag ([695be33](https://github.com/blue-build/github-action/commit/695be33a3961f2860463c9974639e8c2a44982cd))

## [1.8.1](https://github.com/blue-build/github-action/compare/v1.8.0...v1.8.1) (2024-12-11)


### Bug Fixes

* Check for user-provided `build_opts` ([#71](https://github.com/blue-build/github-action/issues/71)) ([b22398a](https://github.com/blue-build/github-action/commit/b22398aebb0d99f2a615f3aea68bb1851b924f7e))

## [1.8.0](https://github.com/blue-build/github-action/compare/v1.7.0...v1.8.0) (2024-12-03)


### Features

* rechunk support ([#69](https://github.com/blue-build/github-action/issues/69)) ([848d8e8](https://github.com/blue-build/github-action/commit/848d8e8e07705afb749590134658b7d1497af0d6))

## [1.7.0](https://github.com/blue-build/github-action/compare/v1.6.2...v1.7.0) (2024-11-11)


### Features

* allow providing options to `bluebuild build` command ([#63](https://github.com/blue-build/github-action/issues/63)) ([acae198](https://github.com/blue-build/github-action/commit/acae19810203662c3221286bb6bbb789061efab2))
* allow skipping the checkout step ([#61](https://github.com/blue-build/github-action/issues/61)) ([b032506](https://github.com/blue-build/github-action/commit/b032506226a640040c6fef03d004757d4b3b2184))

## [1.6.2](https://github.com/blue-build/github-action/compare/v1.6.1...v1.6.2) (2024-10-14)


### Bug Fixes

* Only install podman from opensuse repo if Ubuntu is 22.04 ([#59](https://github.com/blue-build/github-action/issues/59)) ([5fc9194](https://github.com/blue-build/github-action/commit/5fc919404609cec4aae8d4b86809cef2ba84bf36))

## [1.6.1](https://github.com/blue-build/github-action/compare/v1.6.0...v1.6.1) (2024-06-30)


### Bug Fixes

* Default maximize_build_space to true ([#54](https://github.com/blue-build/github-action/issues/54)) ([bf3f2a9](https://github.com/blue-build/github-action/commit/bf3f2a94b58b134c47edf329e49d222f17480438))

## [1.6.0](https://github.com/blue-build/github-action/compare/v1.5.0...v1.6.0) (2024-05-31)


### Features

* Add support for specifying a specific version of the CLI ([#51](https://github.com/blue-build/github-action/issues/51)) ([91ad95d](https://github.com/blue-build/github-action/commit/91ad95da3fc3d7c3b943d4f8a99d8d0e82b5c487))
* support changing working directory ([#43](https://github.com/blue-build/github-action/issues/43)) ([41cfe24](https://github.com/blue-build/github-action/commit/41cfe244bfef69c4db5f7bfdec021aa98d642fb8))


### Bug Fixes

* Allow no token to be passed in ([#49](https://github.com/blue-build/github-action/issues/49)) ([c4592d4](https://github.com/blue-build/github-action/commit/c4592d42e43b763c8d68c67947db14b8b6baeb56))

## [1.5.0](https://github.com/blue-build/github-action/compare/v1.4.0...v1.5.0) (2024-05-01)


### Features

* Add ability to squash builds ([#41](https://github.com/blue-build/github-action/issues/41)) ([f7c352d](https://github.com/blue-build/github-action/commit/f7c352d0ee88f5ea3e582a3f6153b451b10d418f))

## [1.4.0](https://github.com/blue-build/github-action/compare/v1.3.1...v1.4.0) (2024-04-26)


### Features

* Add support for recipes in ./recipes and add cache support ([#39](https://github.com/blue-build/github-action/issues/39)) ([b121a8f](https://github.com/blue-build/github-action/commit/b121a8f9ca987bf21989b5ba729d2bcfe0a3e3d4))

## [1.3.1](https://github.com/blue-build/github-action/compare/v1.3.0...v1.3.1) (2024-04-13)


### Bug Fixes

* switch to new build space maximer action ([#35](https://github.com/blue-build/github-action/issues/35)) ([4ca0217](https://github.com/blue-build/github-action/commit/4ca0217c3f353a5c0345b83d209ff72e98525cfe))

## [1.3.0](https://github.com/blue-build/github-action/compare/v1.2.0...v1.3.0) (2024-03-29)


### Features

* upgrade bluebuild cli version ([#31](https://github.com/blue-build/github-action/issues/31)) ([8be425d](https://github.com/blue-build/github-action/commit/8be425d5fd6bd1b3009b0cdbff35e4be2970de00))

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
