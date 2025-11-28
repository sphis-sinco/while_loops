package;

class Main {
	public static function getInput(prompt:String):String {
		Sys.stdout().writeString(prompt);
		Sys.stdout().flush();

		return Sys.stdin().readLine();
	}

	public static function main() {
		final apples_wanted:Int = Std.parseInt(getInput("How many apples do you want?: "));

        trace("You want " + apples_wanted + " apples.");
	}
}
