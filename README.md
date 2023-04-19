# dotfiles
my dotfiles, zshrc, vimrc and kitty config

## configuration 
there are 2 patches applyed on dwm (dynamic window manager).
- AutoStart patch
- fullgaps
you need to change the path to the Bash script ( autostart.sh ) from the dwm/dwm.c line: 1394

```c
   void
   runAutostart(void) {
   
       system("bash /home/def/.autostart.sh");
   }
```
you need to change it to your own Bash script path.
> system("bash /path/to/your/scipt.sh");

also you can change the gaps size with `window_key,+` and `window_key,shift, +`

### screenshots:
()[dwm/main_earth.png]
()[dwm/runrest.png]
()[dwm/screenshot.png]
