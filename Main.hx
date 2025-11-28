package;

class Main {
	public static function main() {
		// Printing without using trace, useful to print without a newline character
		Sys.stdout().writeString('Please type your name: ');
		// Flush characters to terminal
		Sys.stdout().flush();

		// Reading user input through terminal
		final input = Sys.stdin().readLine();
		trace('Hello ${input}}!');
	}
}
