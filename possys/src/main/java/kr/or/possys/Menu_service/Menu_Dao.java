package kr.or.possys.Menu_service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Menu_Dao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//menu
	public int insertmenu(Menu menu){
		System.out.println("menu_Controll.java <-- insertmenu ");	
		return sqlSessionTemplate.insert("kr.or.possys.menu_service.Menu_Mapper.insertmenu",menu);
	}
}