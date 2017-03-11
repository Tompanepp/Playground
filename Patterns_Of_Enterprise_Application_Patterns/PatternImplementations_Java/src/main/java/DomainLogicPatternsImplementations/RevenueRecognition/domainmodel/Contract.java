package domainLogicPatternsImplementations.RevenueRecognition.domainmodel;

import domainLogicPatternsImplementations.RevenueRecognition.commonimplementations.Money;
import org.joda.time.LocalDate;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Praise on 2017/02/26.
 */
public class Contract {

    private Long id;
    private Product product;
    private Money revenue;
    private LocalDate whenSigned;
    private List<RevenueRecognition> revenueRecognitions;

    public Contract(Product product, Money revenue, LocalDate whenSigned) {
        this.product = product;
        this.revenue = revenue;
        this.whenSigned = whenSigned;
        this.revenueRecognitions = new ArrayList<>();
    }

    public Money getRevenue() {
        return revenue;
    }

    public LocalDate getWhenSigned() {
        return whenSigned;
    }

    public Money recognisedRevenue(LocalDate asOf) {
        Money result = Money.dollars(new BigDecimal(0));
        Iterator it = revenueRecognitions.iterator();
        while (it.hasNext()) {
            RevenueRecognition r = (RevenueRecognition) it.next();
            if (r.isRecognizableBy(asOf)) {
                result = result.add(r.getAmount());
            }
        }
        return result;
    }

    public void addRevenueRecognition(RevenueRecognition revenueRecognition) {
        revenueRecognitions.add(revenueRecognition);
    }

    public void calculateRecognitions() {
        product.calculateRevenueRecognitions(this);
    }

}
