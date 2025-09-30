#oop_calculator.jac
# A simple calculator using object-oriented programming in Jac

obj Calculator {
    has history: list[str] = [];

    # Method to add a number to the result
    def add(a: float, b: float) -> float {
        result = a+b;
        self.history.append(f"Added {a} + {b} = {result}");
        return result;
    }

    def subtract(a: float, b: float) -> float {
        result = a-b;
        self.history.append(f"Added {a} - {b} = {result}");
        return result;
    }

    # Method to multiply the result by a number
    def multiply(a: float, b: float) -> float {
        result = a*b;
        self.history.append(f"Added {a} * {b} = {result}");
        return result;
    }

    # Method to divide the result by a number
    def divide(a: float, b: float) -> float {
        if a/b != 0 {
            self.result /= a/b;
        } else {
            print("Error: Division by zero");
        }
        return result;
    }

    def get_history() -> list[str] {
        return self.history;
    }

    def clear_history() {
        self.history = [];
    }
}
with entry {
    # First, create an instance of our Calculator object.
    calc = Calculator();

    # Perform calculations
    result1: float = calc.add(5.0, 3.0);
    result2: float = calc.subtract(10.0, 4.0);

    print(f"Results: {result1}, {result2}");

    # Show history
    print("\nCalculation History:");
    for entry in calc.get_history() {
        print(f"  {entry}");
    }
}