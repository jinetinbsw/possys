package kr.or.possys.food_service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Food_Dao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//food �Է¿�û
	public int insertfood(Food food){
		System.out.println("01_Food_dao.java->>insertfood ���� ");	
		return sqlSessionTemplate.insert("kr.or.possys.food_service.Food_Mapper.insertfood",food);
	}
	//food ��� ���� ī��Ʈ
	public int getfoodcount(){
		System.out.println("02_Food_dao.java->>getfoodcount ���� ");
		return sqlSessionTemplate.selectOne("kr.or.possys.food_service.Food_Mapper.getfoodcount");
	}
	//food ��Ͽ�û
	public List<Food> foodlist(int currentPage, int pageRow){
		System.out.println("03_Food_dao.java->>foodlist ����");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pageRow);
		map.put("pageRow", pageRow);
		return sqlSessionTemplate.selectList("kr.or.possys.food_service.Food_Mapper.foodlist",map);
	}
	//food ������ ��û
	public Food foodview(String food_id){
		System.out.println("04_Food_dao.java->>foodview ����");
		return sqlSessionTemplate.selectOne("kr.or.possys.food_service.Food_Mapper.foodview",food_id);
	}
	//food �����׼� ��û
	public int foodmodify(Food food){
		System.out.println("05_Food_dao.java->>foodmodify ����");
		return sqlSessionTemplate.update("kr.or.possys.food_service.Food_Mapper.foodmodify",food);
		
	}
	//food ���� ��û
	public int fooddelete(String food_id){
		System.out.println("06_Food_dao.java->>fooddelete ����");
		return 0;
	}
}