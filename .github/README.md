# Calc
[heading__top]:
  #calc
  "&#x2B06; Awk script based calculator with floating point support"


Awk script based calculator with floating point support


## [![Byte size of Calc][badge__main__calc__source_code]][calc__main__source_code] [![Open Issues][badge__issues__calc]][issues__calc] [![Open Pull Requests][badge__pull_requests__calc]][pull_requests__calc] [![Latest commits][badge__commits__calc__main]][commits__calc__main]


---


- [:arrow_up: Top of Document][heading__top]

- [:building_construction: Requirements][heading__requirements]

- [:zap: Quick Start][heading__quick_start]

- [&#x1F9F0; Usage][heading__usage]

- [&#x1F5D2; Notes][heading__notes]

- [:chart_with_upwards_trend: Contributing][heading__contributing]

  - [:trident: Forking][heading__forking]
  - [:currency_exchange: Sponsor][heading__sponsor]

- [:card_index: Attribution][heading__attribution]

- [:balance_scale: Licensing][heading__license]


---



## Requirements
[heading__requirements]:
  #requirements
  "&#x1F3D7; Prerequisites and/or dependencies that this project needs to function properly"


This project was tested with GNU flavored Awk, AKA `gawk`; before opening new Issues please ensure that version `4.1.4` or greater is installed...


- Arch based Operating Systems


```Bash
sudo packman -Syy

sudo packman -S gawk
```


- Debian derived Distributions


```Bash
sudo apt-get update

sudo apt-get install gawk
```


______


## Quick Start
[heading__quick_start]:
  #quick-start
  "&#9889; Perhaps as easy as one, 2.0,..."


Clone this project...


**Linux/MacOS**


```Bash
mkdir -vp ~/git/hub/awk-utilities

cd ~/git/hub/awk-utilities

git clone git@github.com:awk-utilities/calc.git
```


Install via `linked-install.sh` script...


```Bash
cd ~/git/hub/awk-utilities/calc

./linked-install.sh
```


______


## Usage
[heading__usage]:
  #usage
  "&#x1F9F0; How to utilize this repository"


Linux based distributions with MAwk, GAwk, and/or Awk installed generally may run Awk scripts directly, eg...


```Bash
calc.awk <<<'2 + 2'
#> 4
```


... however, some systems do not have the Awk executable linked to `/usr/bin/awk` file path, in such cases Awk scripts must be invoked via...


```Bash
awk -f ./calc.awk <<<'4.2 - 8'
#> -3.8
```


Because this script is line orientated, multiple separate/independent calculations may be preformed, and built-in Awk functions may be called, eg...


```Bash
calc.awk <<EOF
6^2
sqrt(81)
EOF
#> 36
#> 9
```


... or file(s) may be used as script input...


**`equations.txt`**


```Text
7**7
40+2
99/11
```


```Bash
calc.awk equations.txt
#> 823543
#> 42
#> 9
```


______


## Notes
[heading__notes]:
  #notes
  "&#x1F5D2; Additional things to keep in mind when developing"


**Warning** large numbers will overflow Awk, at which point `inf` is returned, eg...


```Bash
calc <<<'2**1024'
#> inf
```


... Additionally mixing `inf` with `-inf` will often result in `-nan`, eg...


```Bash
calc <<<'(2**1024) - (2**1024)'
#> -nan
```


______


## Contributing
[heading__contributing]:
  #contributing
  "&#x1F4C8; Options for contributing to calc and awk-utilities"


Options for contributing to calc and awk-utilities


---


### Forking
[heading__forking]:
  #forking
  "&#x1F531; Tips for forking calc"


Start making a [Fork][calc__fork_it] of this repository to an account that you have write permissions for.


- Add remote for fork URL. The URL syntax is _`git@github.com:<NAME>/<REPO>.git`_...


```Bash
cd ~/git/hub/awk-utilities/calc

git remote add fork git@github.com:<NAME>/calc.git
```


- Commit your changes and push to your fork, eg. to fix an issue...


```Bash
cd ~/git/hub/awk-utilities/calc


git commit -F- <<'EOF'
:bug: Fixes #42 Issue


**Edits**


- `<SCRIPT-NAME>` script, fixes some bug reported in issue
EOF


git push fork main
```


> Note, the `-u` option may be used to set `fork` as the default remote, eg. _`git push fork main`_ however, this will also default the `fork` remote for pulling from too! Meaning that pulling updates from `origin` must be done explicitly, eg. _`git pull origin main`_


- Then on GitHub submit a Pull Request through the Web-UI, the URL syntax is _`https://github.com/<NAME>/<REPO>/pull/new/<BRANCH>`_


> Note; to decrease the chances of your Pull Request needing modifications before being accepted, please check the [dot-github](https://github.com/awk-utilities/.github) repository for detailed contributing guidelines.


---


### Sponsor
  [heading__sponsor]:
  #sponsor
  "&#x1F4B1; Methods for financially supporting awk-utilities that maintains calc"


Thanks for even considering it!


With [![sponsor__shields_io__liberapay]][sponsor__link__liberapay] you may sponsor awk-utilities on a repeating basis.


Regardless of if you're able to financially support projects such as calc that awk-utilities maintains, please consider sharing projects that are useful with others, because one of the goals of maintaining Open Source repositories is to provide value to the community.


______


## Attribution
[heading__attribution]:
  #attribution
  "&#x1F4C7; Resources that where helpful in building this project so far."


- [GitHub -- `github-utilities/make-readme`](https://github.com/github-utilities/make-readme)

- [StackOverflow -- Evaluate arithmetic expression passed as argument in Awk](https://stackoverflow.com/questions/4292580/)

- [Twitter -- `inf` explanation from @DracoMetallium](https://twitter.com/DracoMetallium/status/1260939962477948932)

- [GitHub Pages -- S0AndS0 -- Awk Floating Point Calculator](https://s0ands0.github.io/100-days-of-code/r000/014-awk-floating-point-calculator/)


______


## License
[heading__license]:
  #license
  "&#x2696; Legal side of Open Source"


```
Awk script based calculator with floating point support
Copyright (C) 2020 S0AndS0

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

```


For further details review full length version of [AGPL-3.0][branch__current__license] License.



[branch__current__license]:
  /LICENSE
  "&#x2696; Full length version of AGPL-3.0 License"


[badge__commits__calc__main]:
  https://img.shields.io/github/last-commit/awk-utilities/calc/main.svg

[commits__calc__main]:
  https://github.com/awk-utilities/calc/commits/main
  "&#x1F4DD; History of changes on this branch"


[calc__community]:
  https://github.com/awk-utilities/calc/community
  "&#x1F331; Dedicated to functioning code"

[calc__gh_pages]:
  https://github.com/awk-utilities/calc/tree/
  "Source code examples hosted thanks to GitHub Pages!"

[badge__gh_pages__calc]:
  https://img.shields.io/website/https/awk-utilities.github.io/calc/index.html.svg?down_color=darkorange&down_message=Offline&label=Demo&logo=Demo%20Site&up_color=success&up_message=Online

[gh_pages__calc]:
  https://awk-utilities.github.io/calc/index.html
  "&#x1F52C; Check the example collection tests"

[issues__calc]:
  https://github.com/awk-utilities/calc/issues
  "&#x2622; Search for and _bump_ existing issues or open new issues for project maintainer to address."

[calc__fork_it]:
  https://github.com/awk-utilities/calc/
  "&#x1F531; Fork it!"

[pull_requests__calc]:
  https://github.com/awk-utilities/calc/pulls
  "&#x1F3D7; Pull Request friendly, though please check the Community guidelines"

[calc__main__source_code]:
  https://github.com/awk-utilities/calc/
  "&#x2328; Project source!"

[badge__issues__calc]:
  https://img.shields.io/github/issues/awk-utilities/calc.svg

[badge__pull_requests__calc]:
  https://img.shields.io/github/issues-pr/awk-utilities/calc.svg

[badge__main__calc__source_code]:
  https://img.shields.io/github/repo-size/awk-utilities/calc

