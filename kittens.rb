#Clock in (just once)
#Make gruel (wet food for smallest kittens)
#Check/refill water
#Check/refill food
#Check/clean kitty litter
#Weigh kittens in all 10 cages
#Play with a kitten or two
#Do all of this twice in a shift
#Clock out (just once)

def clock_in(click)
  play click
  sleep 1
end

def gruel(slop)
  play slop
  sleep 1.5
end

def dry
  1 == [1, 2].choose
end

def water
  sample :bass_trance_c
  sleep 1.25
end

def empty
  1 == [1, 2].choose
end

def food
  sample :misc_burp
  sleep 0.5
end

def dirty
  1 == [1, 2].choose
end

def litter
  sample :ambi_dark_woosh
  sleep 1
end

def weigh(scales)
  10.times do
    play scales
    sleep 0.25
  end
end

def goof_off(meow)
  5.times do
    play meow
    sleep 0.75
  end
end

def clock_out(click)
  play click
end

clock_in(sample :drum_cowbell, rate: 1.5)
2.times do
  gruel(sample :drum_splash_hard)
  water if dry
  food if empty
  litter if dirty
  weigh(sample :bd_fat)
  goof_off(sample :perc_bell2, rate: 0.75)
end
clock_out(sample :drum_cowbell, rate: 1.5)


