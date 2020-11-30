package selfstudy.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import selfstudy.sample.service.SampleService;

@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="sampleService") 
    private SampleService sampleService; 

    @RequestMapping(value="/sample/openSampleEmpList.do") 
    public ModelAndView openSampleEmpList(Map<String, Object> commandMap) throws Exception{ 
    	
    	ModelAndView mv = new ModelAndView("/sample/EmpList"); 
    	List<Map<String,Object>> list = sampleService.selectEmpList(commandMap); 
    	mv.addObject("list", list); 
    	
    	return mv;
 
    }
}