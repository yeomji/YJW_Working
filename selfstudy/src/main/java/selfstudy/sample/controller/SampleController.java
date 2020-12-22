package selfstudy.sample.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import selfstudy.common.common.CommandMap;
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
    
    
    @RequestMapping(value="/sample/testCustomMapArgumentResolver.do")
    public ModelAndView testCommandMap(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("");
        if(commandMap.isEmpty()==false) {
            Iterator<Entry<String, Object>> iterator = commandMap.getMap().entrySet().iterator(); 
            Entry<String,Object> entry = null;
             
            while(iterator.hasNext()) {
                entry = iterator.next();
                log.debug("key:"+entry.getKey()+ " , values:"+entry.getValue());
            }
        }
        return mv;
    }
    
    
    @RequestMapping(value="/sample/openEmpInfo.do")
    public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/EmpInfo");
         
        return mv;          
    }
     
    @RequestMapping(value="/sample/writeEmpInfo.do")
    public ModelAndView writeBoard(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("redirect:/sample/openSampleEmpList.do");
        sampleService.writeBoard(commandMap.getMap());
                 
        return mv;
    }
    
    
}