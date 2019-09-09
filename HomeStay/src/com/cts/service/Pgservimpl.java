package com.cts.service;

import com.cts.model.PgDetailsnew;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cts.dao.*;
@Service
public class Pgservimpl 
{


	@Autowired(required=true)
	pgdaoimpl pgdaoimpl;
	public void setPgdaoimpl(pgdaoimpl pgdaoimpl) {
		this.pgdaoimpl = pgdaoimpl;
	}
	@Transactional
	public void adddetails(PgDetailsnew Det) {
		System.out.println("==in service");
			pgdaoimpl.adddetails(Det);
	}
	

}
