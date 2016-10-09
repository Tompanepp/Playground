
function truncateString(str, num) {
    // Clear out that junk in your trunk

    let accountForDots = (num - 3) > 0 ? true : false;
    if (str.length <= 3)
        return str.slice(0, num) + "...";
    else if (str.length > num && accountForDots)
        return str.slice(0, num - 3) + "...";
    else if (str.length > num && !accountForDots)
        return str.slice(0, num) + "...";
    return str;
}

truncateString("Absolutely Longer", 2);