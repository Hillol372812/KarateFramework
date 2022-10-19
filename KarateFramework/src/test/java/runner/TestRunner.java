package runner;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.junit.jupiter.api.AfterAll;

public class TestRunner {
	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:src/test/java/features/test.feature").tags("Smoke").parallel(5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
        generateReport(results.getReportDir());
        
        
    }
	
	
	@SuppressWarnings("unchecked")
	public static void generateReport(String karateOutputPath) {
	       Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
	       List<String> jsonPaths = new ArrayList(jsonFiles.size());
	       jsonFiles.forEach(file -> jsonPaths.add(((File) file).getAbsolutePath()));
	       Configuration config = new Configuration(new File("target"), "DemoReport");
	       ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
	       reportBuilder.generateReports();
	   }
    

}
