package org.zerock.m2.dao;

import lombok.extern.log4j.Log4j2;

@Log4j2
public enum TimeDAO {

    INSTANCE;

    private static final String SQL = "select now()";

    public String getTime() throws RuntimeException {

        StringBuffer buffer = new StringBuffer();

        new JdbcTemplate(){
            @Override
            protected void execute() throws Exception {
                preparedStatement = connection.prepareStatement(SQL);
                resultSet = preparedStatement.executeQuery();
                resultSet.next();
                buffer.append(resultSet.getString(1));
            }
        }.makeAll();

        return buffer.toString();
    }


}//c end
