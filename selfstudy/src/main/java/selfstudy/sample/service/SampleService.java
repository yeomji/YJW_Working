package selfstudy.sample.service;

import java.util.List;
import java.util.Map;

public interface SampleService {

	List<Map<String, Object>> selectEmpList(Map<String, Object> map) throws Exception;

	void writeBoard(Map<String,Object> map) throws Exception;
}

