# Bowling Kata

## Description

The Bowling Kata is a classic programming exercise used to practice test-driven development (TDD) and improve coding skills. The goal is to implement the scoring logic for a game of bowling. The game consists of ten frames, each with the player rolling one or two balls to knock down ten pins.

## Features

- **Scoring Logic:** Calculate the score for each frame and the total score for the game according to the rules of bowling.
- **Strikes and Spares:** Handle scoring for strikes and spares, which have special rules.
- **TDD Practice:** Follow the TDD approach by writing tests before implementing the scoring logic.

## Rules

1. A game consists of 10 frames.
2. Each frame allows the player to roll one or two balls, except for the 10th frame, which may have up to three rolls.
3. The score for a frame is the total number of pins knocked down plus bonuses for strikes and spares in previous frames.
4. Strikes (X) earn 10 points plus the sum of the next two rolls.
5. Spares (/) earn 10 points plus the next roll.
6. A roll can knock down 0 to 10 pins.

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/arjunhanswal/bowling-kata.git
    ```

2. Navigate to the project directory:

    ```bash
    cd bowling-kata
    ```

3. Open the project in your preferred code editor.

4. Install dependencies (if any).

5. Run tests to ensure everything is set up correctly:

    ```bash
    // Add your testing command here
    ```

## Usage

1. Write failing tests for each scoring rule.
2. Implement the scoring logic to make the tests pass.
3. Refactor the code as needed, ensuring that tests continue to pass.
4. Repeat the process for each scoring rule and edge case.

## Example

Here's a simple example to illustrate the scoring logic:

```swift
let game = BowlingGame()

// Roll a 3 and a 5 in the first frame
game.roll(pins: 3)
game.roll(pins: 5)

// Roll a spare in the second frame
game.roll(pins: 5)
game.roll(pins: 5)

// Roll a strike in the third frame
game.roll(pins: 10)

// Continue rolling for the remaining frames...

// Get the total score
let totalScore = game.score()

print("Total Score: \(totalScore)")
```

## Contributing

Feel free to contribute to the project by opening issues or pull requests. If you have suggestions, improvements, or new features, your contributions are welcome!

## License

This project is licensed under the [MIT License](LICENSE).
