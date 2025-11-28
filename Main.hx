package;

class Main {
	public static var LARGE_CRATE_CARRY_AMOUNT:Int = 30;
	public static var MEDIUM_CRATE_CARRY_AMOUNT:Int = 12;
	public static var SMALL_CRATE_CARRY_AMOUNT:Int = 6;

	public static function getInput(prompt:String):String {
		Sys.stdout().writeString(prompt);
		Sys.stdout().flush();

		return Sys.stdin().readLine();
	}

	public static function main() {
		var data:Dynamic = {
			apples_wanted: null,
			apples_left: null,

			large_crates: 0,
			medium_crates: 0,
			small_crates: 0,
		};

		while (data.apples_wanted == null)
			data.apples_wanted = Std.parseInt(getInput("How many apples do you want?: "));

		trace("You want " + data.apples_wanted + " apples.");

		data.apples_left = data.apples_wanted;

		while (data.apples_left >= LARGE_CRATE_CARRY_AMOUNT) {
			data.large_crates++;
			data.apples_left -= LARGE_CRATE_CARRY_AMOUNT;
		}

		while (data.apples_left >= MEDIUM_CRATE_CARRY_AMOUNT) {
			data.medium_crates++;
			data.apples_left -= MEDIUM_CRATE_CARRY_AMOUNT;
		}

		while (data.apples_left >= SMALL_CRATE_CARRY_AMOUNT) {
			data.small_crates++;
			if (data.apples_left < SMALL_CRATE_CARRY_AMOUNT) {
				data.apples_left -= data.apples_left;
			} else {
				data.apples_left -= SMALL_CRATE_CARRY_AMOUNT;
			}
		}

        trace('L: ' + data.large_crates);
        trace('M: ' + data.medium_crates);
        trace('S: ' + data.small_crates);
	}
}
