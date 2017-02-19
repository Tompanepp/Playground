package commonImplementations;

import java.math.BigDecimal;
import java.util.Currency;

/**
 * Originally By Matt Foemmel and Martin Fowler
 * Written ad adapted by Praise on 2017/02/15.
 */

//Value Obejct (486)
public class Money {
    private static final int[] cents = new int[]{1, 10, 100, 1000};
    private long amount;
    private Currency currency;

    public Money(BigDecimal amount, Currency currency) {
        new Money(amount, currency);
    }

    public Money(double amount, Currency currency) {
        new Money(amount, currency);
    }

    public static Money dollars(BigDecimal value) {
        return new Money(value, Currency.getInstance("$"));
    }


    //Shouldn't be getters/accessors these using these much

    public BigDecimal amount() {
        return BigDecimal.valueOf(amount, currency.getDefaultFractionDigits());
    }

    public Currency currency() {
        return currency;
    }
    //Shouldn't be getters/accessors these using these much

    public Money add(Money money) throws RuntimeException {
        assertCurrencyIsTheSame(money);
        return newMoney(this.amount + money.amount);
    }

    // Very cool factory method, I didn't think of this one
    private Money newMoney(long money) {
        return new Money(money, this.currency);
    }

    public Money substract(Money money) throws RuntimeException {
        assertCurrencyIsTheSame(money);
        long difference = this.amount - money.amount;
        assertAmountIsGreaterThanZero(difference);
        return newMoney(difference);
    }

    public boolean equals(Object other) {
        return (other instanceof Money) && equals((Money) other);
    }

    public boolean equals(Money other) {
        return currency.equals(other.currency) && (amount == other.amount);
    }

    public int hashCode() {
        return (int) (amount ^ (amount >>> 32));
    }

    public int CompareTo(Object other) {
        return compareTo((Money) other);
    }

    //Comparable interface
    public int compareTo(Money other) {
        assertCurrencyIsTheSame(other);
        if (amount < other.amount) return -1;
        else if(amount == other.amount) return  0;
        else return 1;
    }

    public boolean greaterThan(Money other) {
      return (compareTo(other) > NumericConstants.Zero);

        /* This was my implementation, the one above is far more concise and readable
            if(compareTo(other) == 1) return true;
            else return false;
        */
    }

    private int centFactor() {
        return cents[currency.getDefaultFractionDigits()];
    }

    private void assertCurrencyIsTheSame(Money arg) {
        if (!this.currency.equals(arg.currency)) {
            throw new RuntimeException("Money Math Mismatch: The currencies of the money is not the same");
        }
    }

    private void assertAmountIsGreaterThanZero(long arg) {
        assert (arg > NumericConstants.Zero);
    }
}
