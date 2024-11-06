# v0.4.5

## Other Changes
* chore(GROW-2952): add codeowners (#57) (Matt Cadorette)([b5d5673](https://github.com/lacework/terraform-aws-iam-role/commit/b5d5673d7078740767cfadbe9f4056f248897fb6))
* ci: migrate from codefresh to github actions (#56) (Timothy MacDonald)([876a808](https://github.com/lacework/terraform-aws-iam-role/commit/876a8084e3fffde0fd8133926353fbf826ac94e8))
* ci: add workflows for testing codefresh migration (#54) (Timothy MacDonald)([d790976](https://github.com/lacework/terraform-aws-iam-role/commit/d790976a620ed40c2da2bd63476715103e081683))
* ci: remove workflow (#53) (Timothy MacDonald)([ad3f2d1](https://github.com/lacework/terraform-aws-iam-role/commit/ad3f2d19c39ed09aa41779b1f7a145cd3638c037))
* ci: add nightly test github action (#52) (Timothy MacDonald)([22f0ca9](https://github.com/lacework/terraform-aws-iam-role/commit/22f0ca92504f7d6652d9eea69ab62ce824f52777))
* ci: version bump to v0.4.5-dev (Lacework)([8cb8f71](https://github.com/lacework/terraform-aws-iam-role/commit/8cb8f71c11961f66dfec7505651c8ab63b5c70bf))
---
# v0.4.4

## Other Changes
* chore: set local var module name (#49) (Darren)([728c1aa](https://github.com/lacework/terraform-aws-iam-role/commit/728c1aaa04765e8ed7c3be9acd41a12f2bc5c457))
* ci: version bump to v0.4.4-dev (Lacework)([90345cb](https://github.com/lacework/terraform-aws-iam-role/commit/90345cb315bdd3bbbec9e228ffe179e8c854146f))
---
# v0.4.3

## Other Changes
* chore: add lacework_metric_module datasource (#47) (Darren)([224d10f](https://github.com/lacework/terraform-aws-iam-role/commit/224d10f95427c717efb29327416c90ea84812133))
* ci: version bump to v0.4.3-dev (Lacework)([e8ccbb4](https://github.com/lacework/terraform-aws-iam-role/commit/e8ccbb485f9a02d2a3859b2132970b53c8a9c15a))
---
# v0.4.2

## Refactor
* refactor(role): update to use Lacework external IAM role (#45) (Timothy MacDonald)([105b3f9](https://github.com/lacework/terraform-aws-iam-role/commit/105b3f96dfc86fa7375799253298a5b67cc2f4a9))
## Documentation Updates
* docs(readme): add terraform docs automation (#44) (Timothy MacDonald)([de7aa0e](https://github.com/lacework/terraform-aws-iam-role/commit/de7aa0ecc6199905ad25879806c9cde3cce0b570))
## Other Changes
* ci: version bump to v0.4.2-dev (Lacework)([1bc7093](https://github.com/lacework/terraform-aws-iam-role/commit/1bc709324a22dce2e5a2a07eebd9ee599f1d6d52))
---
# v0.4.1

## Bug Fixes
* fix: pin lacework provider version ~> 1.15 (#42) (Salim Afiune)([719e6a9](https://github.com/lacework/terraform-aws-iam-role/commit/719e6a9522b9ad7319c5447d276a875b69aa4839))
## Other Changes
* ci: version bump to v0.4.1-dev (Lacework)([6524b94](https://github.com/lacework/terraform-aws-iam-role/commit/6524b949b0cf8c41748e2a6daffd41c639825bd4))
---
# v0.4.0

## Features
* feat: use external id resource (#40) (djmctavish)([07e4479](https://github.com/lacework/terraform-aws-iam-role/commit/07e4479dcac95c7ed29d0b279dbd03deacaf04a2))
## Other Changes
* ci: tfsec (jon-stewart)([e317b05](https://github.com/lacework/terraform-aws-iam-role/commit/e317b05c5c169acb49182a0965732d5f33777116))
* ci: version bump to v0.3.2-dev (Lacework)([7ac6b3a](https://github.com/lacework/terraform-aws-iam-role/commit/7ac6b3af8d31a6500ec6103035c2fd84ae3245c1))
---
# v0.3.1

## Refactor
* refactor: change version pinning to allow Terrafrom 0.13 (#34) (Darren)([615370b](https://github.com/lacework/terraform-aws-iam-role/commit/615370bb0ac2094827b3117dbf94c6472843aaf6))
## Other Changes
* ci: version bump to v0.3.1-dev (Lacework)([00c119c](https://github.com/lacework/terraform-aws-iam-role/commit/00c119c1557ff8291e68872313025b082481d2ac))
---
# v0.3.0

## Features
* feat: add permissions_boundary variable (#33) (Victor Knell)([105753b](https://github.com/lacework/terraform-aws-iam-role/commit/105753b1f5a109e50e793eeeb7d6fbdf14a2a5a9))
* feat: deprecate support for Terraform 0.12 and 0.13 (#31) (Darren)([ff8c112](https://github.com/lacework/terraform-aws-iam-role/commit/ff8c11249bfa905cb67c95e53c699231ff7fab12))
## Other Changes
* ci: version bump to v0.2.4-dev (Lacework)([8b34d2d](https://github.com/lacework/terraform-aws-iam-role/commit/8b34d2d20a258e3765503ae67b7cf96db7c88a29))
---
# v0.2.3

## Bug Fixes
* fix: use resource name attribute instead of string for name output (#25) (Tim Arenz)([c977369](https://github.com/lacework/terraform-aws-iam-role/commit/c977369d8d90dfe1f7bf4d52454c5f983c0a885b))
## Documentation Updates
* docs: Add contributing documentation (#24) (Darren)([0eca722](https://github.com/lacework/terraform-aws-iam-role/commit/0eca72210b1fc6a8164a2677a9e7e5c22caa7ada))
## Other Changes
* chore: update .terraform entry in .gitignore to exclude lock files (#29) (Salim Afiune)([3ea3e77](https://github.com/lacework/terraform-aws-iam-role/commit/3ea3e774212b8cc4390064caad30fb2e0bd6c8ef))
* chore: update PR template (#27) (Darren)([307dee1](https://github.com/lacework/terraform-aws-iam-role/commit/307dee164e4681df00622655ea6229acbe438286))
* chore: version bump to v0.2.3-dev (Lacework)([e9914c9](https://github.com/lacework/terraform-aws-iam-role/commit/e9914c90ccb0dc5e4ac0377e9353d57d93c1942c))
* ci: sign lacework-releng commits (#23) (Salim Afiune)([406ae5b](https://github.com/lacework/terraform-aws-iam-role/commit/406ae5b8abb961eab5ac71cbe26f7c66bbacadee))
---
# v0.2.2

## Documentation Updates
* docs: fix codefresh icon (#18) (Darren)([f981263](https://github.com/lacework/terraform-aws-iam-role/commit/f981263aa1ef6787ba1009bcd0163273d9b7784c))
## Other Changes
* chore: bump required version of TF to 0.12.31 (#21) (Scott Ford)([4de0911](https://github.com/lacework/terraform-aws-iam-role/commit/4de091144262b950aa76ee5f5165f4fc87bae747))
* ci: fix finding major versions during release (#19) (Salim Afiune)([509134e](https://github.com/lacework/terraform-aws-iam-role/commit/509134e51cb6237e1cee9bb6cab2b54d80afa7b8))
* ci: switch PR test from CircleCI to CodeFresh (#17) (Darren)([1569216](https://github.com/lacework/terraform-aws-iam-role/commit/1569216a59b20fda37742198f437cce801829336))
---
# v0.2.1

## Bug Fixes
* fix(output): point to local role name (#15) (Salim Afiune)([952eec6](https://github.com/lacework/terraform-aws-iam-role/commit/952eec6920a57b5b5991dfba442a484fda8db1f1))
---
# v0.2.0

## Refactor
* refactor: make IAM role name unique (Salim Afiune Maya)([0b144eb](https://github.com/lacework/terraform-aws-iam-role/commit/0b144eb5b5ffcc5abdf8b7e35e7d94856d8cc634))
## Other Changes
* ci: switch releases to be own by Lacework releng ⚡ (Salim Afiune Maya)([8ab758d](https://github.com/lacework/terraform-aws-iam-role/commit/8ab758d1c1db888de2567b1d52e4b3d678113ab9))
---
# v0.1.3

## Documentation Updates
* docs: updating all examples (#10) (Scott Ford)([8e42c2d](https://github.com/lacework/terraform-aws-iam-role/commit/8e42c2d7d2acc3e95a104596bfc2bf29b32a323e))
## Other Changes
* ci: send slack notifications to team alias ⭐ (#9) (Salim Afiune)([23a1327](https://github.com/lacework/terraform-aws-iam-role/commit/23a13273cdf5eebda35459fab81532cdcfd5be70))
---
# v0.1.2

## Features
* feat(tags): Added the ability to tag created resources (#6) (Alan Nix)([ea84f9a](https://github.com/lacework/terraform-aws-iam-role/commit/ea84f9ad07c443669b07fc1d6cd0bd6dd2eca715))
## Other Changes
* ci: new release.sh release notes generation (#7) (Salim Afiune)([25ca284](https://github.com/lacework/terraform-aws-iam-role/commit/25ca2844184d86e5e4f981af0018dcab50088b7b))
---
# v0.1.1

## Documentation Updates
* docs: update README badge (Salim Afiune Maya)([31328d9](https://github.com/lacework/terraform-aws-iam-role/commit/31328d9fe1974d9ff6a8e4d583545bcc0ea64791))
## Other Changes
* chore(version): bump to aws 3.x provider (#4) (Salim Afiune)([bce5405](https://github.com/lacework/terraform-aws-iam-role/commit/bce5405733654f0a53feee49bf4512fd67f204cf))
* ci: rename the default branch to main (#3) (Salim Afiune)([a51675f](https://github.com/lacework/terraform-aws-iam-role/commit/a51675f5a72802742f95f6df30b5049b453d4524))
* ci: add Terraform 13 image (Salim Afiune Maya)([f2a5512](https://github.com/lacework/terraform-aws-iam-role/commit/f2a5512f77845dbdcbf0ce5f259f73014bdc748e))
* ci: bump version and fix release.sh (Salim Afiune Maya)([67bf33d](https://github.com/lacework/terraform-aws-iam-role/commit/67bf33d20740a1dbfb994fdc605e414c41bc6993))
---
# v0.1.0

Initial commit
