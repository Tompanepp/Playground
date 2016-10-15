static String[] oneThruNineteen = { "NULL", "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX",
        "SEVEN", "EIGHT", "NINE", "TEN", "ELEVEN", "TWELVE",
        "THIRTEEN", "FOURTEEN", "FIFTEEN", "SIXTEEN", "SEVENTEEN",
        "EIGHTEEN", "NINETEEN" };

static String[] theDecades = { "NULL", "NULL", "TWENTY", "THIRTY", "FOURTY", "FIFTY",
        "SIXTY", "SEVENTY", "EIGHTY", "NINETY" };
public static String numToStr(int amount) {
    String str = "";
    if (amount >= 100) {
        str += oneThruNineteen[ amount / 100] + " hundred ";
        str += numToStr(amount % 100);
    }
    else if (amount >= 20) {
        str += theDecades[  amount / 10 ];
        str += numToStr(amount % 10);
    }
    else {
        str += oneThruNineteen[ amount ];
    }
    return str;
}