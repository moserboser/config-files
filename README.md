# Configuration files fedora-sway spin

## **Important**

These files are not optimized for other users and should thus not be used as are. 

----- 

## Dependencies 

### [Pywal](https://github.com/dylanaraps/pywal.git) 
The colors of alacritty, waybar, swaync as well as sway change automatically based on the wallpaper. 
The `themes.sh` scrip allows for searching folders in a specified directory and running wal on a randomly selected image from the selected folder.
Pywal is set up to use [haishoku](https://github.com/LanceGin/haishoku.git) as a backend.

For pywal to work with waybar, you have to specify a custom pywal template for the wayar colors: Create a file named `colors-waybar.css` with the following content in `~/.config/wal/templates/`: 


```
@define-color foreground {foreground};
@define-color background {background};
@define-color cursor {cursor};

@define-color color0 {color0};
@define-color color1 {color1};
@define-color color2 {color2};
@define-color color3 {color3};
@define-color color4 {color4};
@define-color color5 {color5};
@define-color color6 {color6};
@define-color color7 {color7};
@define-color color8 {color8};
@define-color color9 {color9};
@define-color color10 {color10};
@define-color color11 {color11};
@define-color color12 {color12};
@define-color color13 {color13};
@define-color color14 {color14};
@define-color color15 {color15};
```

## How to use
The folder is set up to be used with [stow](https://github.com/aspiers/stow) but I recommend to copy snippets manually. 
Otherwise you can clone the repo, change into it and run `stow config-directory-to-stow`

## credits 

[Sway interactive Screenshot](https://github.com/moverest/sway-interactive-screenshot.git) is used for screenshots.

## Examples 

![red](screenshots/screenshot_2025-01-01T14:50:15.png)
![pink](screenshots/screenshot_2025-01-01T14:53:43.png)
![green](screenshot_2025-01-01T14:53:57.png)


