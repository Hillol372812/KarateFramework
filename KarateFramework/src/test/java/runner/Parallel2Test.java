package runner;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;


import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import static org.junit.Assert.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.Test;


public class Parallel2Test {
	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:features").tags("@Test").parallel(5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
        
        //Results results = Runner.path("classpath:features").tags("@Test").parallel(5);
        //assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
       
        
    }
	
	
    

}
