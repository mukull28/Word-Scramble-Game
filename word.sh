
words=("linux" "ubuntu" "games" "script" "terminal" "memory")


word=${words[$RANDOM % ${#words[@]}]}


scrambled=$(echo "$word" | fold -w1 | shuf | tr -d '\n')

echo "Welcome to Word Scramble!"
echo "Unscramble the letters to form a word."
echo "Scrambled word: $scrambled"


attempts=3
while [ $attempts -gt 0 ]
do
    read -p "Your guess: " guess
    if [ "$guess" == "$word" ]; then
        echo "Correct, You win!"
        exit 0
    else
        attempts=$((attempts-1))
        echo "Wrong! Attempts left: $attempts"
    fi
done

echo "Game Over! The correct word was: $word"

