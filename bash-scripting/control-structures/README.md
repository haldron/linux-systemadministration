# Notes
## Testing truth conditions with the if keyword

Format :
```
if expression
then
    -statements-
elif expression2
then
    -statements-
else
    -statements-
fi
```

## For loops
Described in forloops.sh script

# While and Until loops
Described in whileuntilloops.sh script

## Selecting behaviour using cases
Example :
```
a="dog"
case $a in 
    cat) echo "Feline";;
    dog|puppy) echo "Canine";;
    *) echo "No match!";;
esac
```

## Using functions
Example :
```
function numberthings {
    i=1
    for f in $@; do
        echo $i: $f
        ((i+=1))
    done
}

numberthings $(ls)
numberthings pine birch maple syrup
```