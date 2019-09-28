package com.procurement.model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Rfqdao extends Connect{
	public List<RFQ> listAllApprovedRfqs() throws SQLException {
        List<RFQ> ApprovedRFQs = new ArrayList<>();
         
        String sql = "SELECT * FROM rfq where rfqStatus= 'approved";
         
        
         
        Statement statement = getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
         
        while (resultSet.next()) {
        	
        	
            RFQ newrfq = new RFQ(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getDate(5), resultSet.getDouble(6), resultSet.getString(7));
            ApprovedRFQs.add(newrfq);
        }
         
        resultSet.close();
        statement.close();
         
       
          
        return ApprovedRFQs;
    }
}
