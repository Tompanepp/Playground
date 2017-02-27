package DomainLogicPatternsImplementations.RevenueRecognition.domainmodel;

import DomainLogicPatternsImplementations.RevenueRecognition.commonimplementations.Money;
import org.joda.time.LocalDate;

/**
 * Created by Praise on 2017/02/25.
 */
public class RevenueRecognition {
    private Money amount;
    private LocalDate date;

    public RevenueRecognition(Money amount, LocalDate date) {
        this.amount = amount;
        this.date = date;
    }

    public Money getAmount() {
        return amount;
    }

    boolean isRecognizableBy(LocalDate asOf) {
        return asOf.isAfter(date) || asOf.equals(date);
    }
}
