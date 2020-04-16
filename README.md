<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### Wanna fish theme

> A theme for [Oh My Fish][omf-link]
> by Cezary Grzanka

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.0.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

## With Oh-My-Fish

### Download

```sh
$ omf dir: ~/.local/share/omf
$ git clone https://github.com/Grzanka99/wanna-fish-theme.git ~/.local/share/omf/themes/wanna
$ # Enabling
$ omf reload
$ omf theme wanna
```

## With clear fish

If you want to install this theme in clear fish, you have to close this repository into functions directory inside fish config directory.
e.g.:

```
$ # config dir: ~/.config/fish/
$ git clone https://github.com/Grzanka99/wanna-fish-theme.git ~/.config/fish/functions
```

If you have any other files inside `functions` directory, you have to move this files manualy:

```
fish_prompt.fish
fist_right_prompt.fish
```

## Features

- git repository support
- shortcut of full path
- nice look :P

## Screenshot

<img src="preview.png" width="722px" height="458px">

# License

[MIT][mit] © [Cezary Grzanka][author] et [al][contributors]

[mit]: https://opensource.org/licenses/MIT
[author]: https://github.com/Grzanka99
[contributors]: https://github.com/Grzanka99/wanna-fish-theme/graphs/contributors
[omf-link]: https://www.github.com/oh-my-fish/oh-my-fish
[license-badge]: https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
