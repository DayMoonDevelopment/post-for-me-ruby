# Changelog

## 0.1.0-alpha.10 (2025-11-05)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* **api:** api update ([129bf08](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/129bf0849de95a151f9fb756f8ae18feee7ca85b))
* handle thread interrupts in the core HTTP client ([67a9096](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/67a9096a8cdf6200f708a3f58063405bceb7f7ca))


### Bug Fixes

* absolutely qualified uris should always override the default ([2f8e594](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/2f8e594d99b3c79d12b6e6dcb50d1928df5af7c0))
* better thread safety via early initializing SSL store during HTTP client creation ([b9e0151](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/b9e01515a5ff7e201462dded310b312800a0276d))
* should not reuse buffers for `IO.copy_stream` interop ([4a8bedd](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/4a8bedda953dabf110a699a183b62d338713b44f))


### Chores

* bump dependency version and update sorbet types ([936adc6](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/936adc671f5a30e84245daa790743dd9183b0a17))
* ignore linter error for tests having large collections ([8b60378](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/8b60378131cc5ff32c7dc2e96aa3d7db84280d6b))

## 0.1.0-alpha.9 (2025-10-03)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* **api:** api update ([29166f7](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/29166f7dd2eebd6f9a49e99c553f4212233879e9))
* **api:** api update ([c75db7a](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/c75db7ab2fcc16f9e831ed1722e837d4dc1fbd91))
* **api:** api update ([11635c1](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/11635c16438bf92c6aec3d4c524f09768bf8f2cc))
* expose response headers for both streams and errors ([c4a0864](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/c4a0864dab0421eca1ba510038376497ca4c3d1f))


### Bug Fixes

* coroutine leaks from connection pool ([5ca79a4](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/5ca79a4bbab523051dbecd1f48eb95ad5bf93af7))
* shorten multipart boundary sep to less than RFC specificed max length ([e467fe7](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/e467fe77aacf67eeff2f4abd38177476c925c411))


### Performance Improvements

* faster code formatting ([58bee30](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/58bee30eb5b12ee89f3271e386d425d119641227))


### Chores

* allow fast-format to use bsd sed as well ([b753209](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/b7532090e9056a27ce382fe54965a90a1bf65cce))
* do not install brew dependencies in ./scripts/bootstrap by default ([ba2ba3c](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/ba2ba3cc8fa0b6e756a840035bcd6f30054a1831))
* **internal:** codegen related update ([11c589f](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/11c589fc01e8a1c650e271dffb5c9bd9ef2f4da3))
* **internal:** codegen related update ([6e6de4f](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/6e6de4f6f1424334a37de60918ea43190593d522))

## 0.1.0-alpha.8 (2025-09-06)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* **api:** api update ([b15e35d](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/b15e35d20fbac883c45ae3241b432b2fcbc8219e))

## 0.1.0-alpha.7 (2025-08-25)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Chores

* add json schema comment for rubocop.yml ([ee87501](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/ee8750167bee18e813616a6c2ee65c62014dddd1))

## 0.1.0-alpha.6 (2025-08-23)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** api update ([0e3af6b](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/0e3af6bc9a6a2d504d46e258b52c4abdfd59e861))
* **api:** api update ([ad254cb](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/ad254cb4166a2cb3c3e5ef3f0bbec7a4c472e161))
* **api:** manual updates ([8f82af3](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/8f82af3f45bfa36142ed3ccf997befff54879787))
* **api:** manual updates ([f6f6902](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/f6f6902b6528c4a5ee9ac2f5646372ee9c8b792e))

## 0.1.0-alpha.5 (2025-08-22)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **api:** api update ([0eae2d6](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/0eae2d659f9b0faeb3e8bcddb12a273343314e3d))


### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([c6ab64c](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/c6ab64c6459562d58a4858b6a9a47e9a1cdf6c73))

## 0.1.0-alpha.4 (2025-08-18)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* **api:** api update ([c4f6edf](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/c4f6edf0b6af61e9490d6f82227ae3ec87257d11))

## 0.1.0-alpha.3 (2025-08-14)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

## 0.1.0-alpha.2 (2025-08-14)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** update via SDK Studio ([e6dcd18](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/e6dcd18301dfba1f3599c190d9fe0122e13f5795))

## 0.1.0-alpha.1 (2025-08-13)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/DayMoonDevelopment/post-for-me-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** update via SDK Studio ([ba84c36](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/ba84c363df972115536055a856fc88018bd100a1))


### Chores

* collect metadata from type DSL ([332df92](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/332df92f64a5c4c4a785fd4f0fbb3592e44a76b1))
* configure new SDK language ([9985a2e](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/9985a2e4959261f12d25399c53a185b6cf7f899a))
* **internal:** codegen related update ([fb0d2f4](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/fb0d2f491fb6ecfd9228f17b7dbacfc058861b65))
* **internal:** increase visibility of internal helper method ([785e851](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/785e851acf28360a16f0ea52908f2f5e30a9328f))
* **internal:** update comment in script ([acaa0a0](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/acaa0a02d1cd0322c46f149988d2465150c95ca7))
* update @stainless-api/prism-cli to v5.15.0 ([5037c70](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/5037c7051dd04812b7d0ddc48b32ab3df66c3d86))
* update SDK settings ([55d0356](https://github.com/DayMoonDevelopment/post-for-me-ruby/commit/55d0356920869865280bc1d4e8228c27ab6e871f))
