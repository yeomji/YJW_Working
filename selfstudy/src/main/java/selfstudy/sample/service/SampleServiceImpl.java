package selfstudy.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import selfstudy.sample.dao.SampleDAO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService{

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name="sampleDAO") 
	private SampleDAO sampleDAO;


	@Override
	public List<Map<String, Object>> selectEmpList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sampleDAO.selectEmpList(map);
	}


	@Override
	public void writeBoard(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		sampleDAO.writeEmpInfo(map);
	}


	@Override
	public Map<String, Object> selectEmpDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sampleDAO.selectEmpDetail(map);
	}

}
