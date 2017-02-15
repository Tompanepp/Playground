package TransactionScript;

import java.math.BigDecimal;

/**
 * Created by Praise on 2017/02/15.
 */
public class Money {
    public BigDecimal getAmount() {
        return amount;
    }

    private BigDecimal amount;
    private String currency;

    public Money (BigDecimal amount, String currency) {
        new Money(amount, currency);
    }

    public static Money dollars(BigDecimal value) {
       return new Money(value, "$");
    }
    public void add(Money value) {
        this.amount.add(value.getAmount());
    }
}
