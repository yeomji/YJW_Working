package selfstudy.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import selfstudy.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectEmpList(Map<String, Object> map) throws Exception{
		// TODO Auto-generated method stub
		return (List<Map<String, Object>>)selectList("sample.selectEmpList", map);
	}

	public void writeEmpInfo(Map<String, Object> map) {
		// TODO Auto-generated method stub
		//return null;
		insert("sample.writeEmpInfo",map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectEmpDetail(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>)selectOne("sample.selectEmpInfo", map);
	}	
}
