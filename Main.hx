package;

class Main {
	public static function getInput(prompt:String):String {
		Sys.stdout().writeString(prompt);
		Sys.stdout().flush();

		return Sys.stdin().readLine();
	}

	public static function main() {
		final input = getInput("Please type your name: ");
		trace('Hello ${input}!');
	}
}
