package datasourcearchitecturalpatterns.datamapper;

/**
 * Created by Praise on 2017/03/12.
 */
public interface StatementSource {
    String sql();
    Object[] parameters();
}
