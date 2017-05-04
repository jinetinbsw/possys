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
	
	//food 입력요청
	public int insertfood(Food food){
		System.out.println("01_Food_dao.java->>insertfood 실행 ");	
		return sqlSessionTemplate.insert("kr.or.possys.food_service.Food_Mapper.insertfood",food);
	}
	//food 목록 갯수 카운트
	public int getfoodcount(){
		System.out.println("02_Food_dao.java->>getfoodcount 실행 ");
		return sqlSessionTemplate.selectOne("kr.or.possys.food_service.Food_Mapper.getfoodcount");
	}
	//food 목록요청
	public List<Food> foodlist(int currentPage, int pageRow){
		System.out.println("03_Food_dao.java->>foodlist 실행");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("beginRow", (currentPage-1)*pageRow);
		map.put("pageRow", pageRow);
		return sqlSessionTemplate.selectList("kr.or.possys.food_service.Food_Mapper.foodlist",map);
	}
	//food 수정폼 요청
	public Food foodview(String food_id){
		System.out.println("04_Food_dao.java->>foodview 실행");
		return sqlSessionTemplate.selectOne("kr.or.possys.food_service.Food_Mapper.foodview",food_id);
	}
	//food 수정액션 요청
	public int foodmodify(Food food){
		System.out.println("05_Food_dao.java->>foodmodify 실행");
		return sqlSessionTemplate.update("kr.or.possys.food_service.Food_Mapper.foodmodify",food);
		
	}
	//food 삭제 요청
	public int fooddelete(String food_id){
		System.out.println("06_Food_dao.java->>fooddelete 실행");
		return 0;
	}
}