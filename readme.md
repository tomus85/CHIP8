# Installing sdl

If you have not installed `SDL2` then do the following:

```sh
brew install sdl2
```

On Apple Silicon hardware go to this directory 
```sh 
cd /opt/homebrew/Cellar/sdl2
```

Copy the content fromm `/include/sdl2` into your `include` folder (It should be a folder called SDL2 that contains a bunch of .h files.)

<br>

Go to `lib` and copy the contents (some folders and some .a and .dylib files) into `/lib` in VScode project

<br>

The add the follwing to `Makefile`

```Makefile
INCLUDES= -I ./include
LIBRARIES= -L lib -l SDL2-2.0.0
FLAGS= -g

all:
	gcc ${FLAGS} ${INCLUDES} ${LIBRARIES} ./src/main.c -o ./bin/main 
```

---
[SDL2 on mac VSCode](https://medium.com/@edkins.sarah/set-up-sdl2-on-your-mac-without-xcode-6b0c33b723f7)<br>
[Chip8 ref](http://devernay.free.fr/hacks/chip8/C8TECH10.HTM)


---
[GameBoy Doc](https://gbdev.io/pandocs/About.html)<br>

<br>

[Rust NES Doc](https://bugzmanov.github.io/nes_ebook/)<br>
[Reddit NES Rust](https://www.reddit.com/r/rust/comments/pmo2l5/tried_to_rewrite_a_c_nes_emulator_in_rust_now_it/)<br>
[GameBoy Rust](https://github.com/benkonz/gameboy_emulator)