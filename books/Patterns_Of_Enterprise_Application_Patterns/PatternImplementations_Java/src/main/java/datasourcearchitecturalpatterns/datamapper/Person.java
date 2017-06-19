package datasourcearchitecturalpatterns.datamapper;

/**
 * Created by Praise on 2017/03/11.
 */
public class Person extends DomainObject {
    private String lastNmae;
    private String firstName;
    private int numberOfDependents;

    public Person(Long id, String lastNmae, String firstName, int numberOfDependencies) {
        this.lastNmae = lastNmae;
        this.firstName = firstName;
        this.numberOfDependents = numberOfDependencies;
    }

    public String getLastName() {
        return lastNmae;
    }

    public String getFirstName() {
        return firstName;
    }

    public int getNumberOfDependents() {
        return numberOfDependents;
    }
}
