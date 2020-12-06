package store.digitalartstudio.website.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import store.digitalartstudio.website.models.Freebie;
import store.digitalartstudio.website.service.FreebieService;
import store.digitalartstudio.website.service.MailSendingService;

@Controller
public class HotDealController {
	
	@Autowired private Environment env;
	@Autowired private MailSendingService mSrvc;
	@Autowired private FreebieService fSrvc;

	@GetMapping("/hotdeal")
	public String hotDeal() {
		return "freebie";
	}
	
	@PostMapping("/download")
	public ResponseEntity<InputStreamResource> hotDealPOST(Freebie freebie) throws FileNotFoundException {
		System.out.println(freebie.toString());
        File file = new File(env.getProperty("hot.deal.freebie.download"));
        InputStreamResource resource = new InputStreamResource(new FileInputStream(file));
        
        mSrvc.sendMail(freebie);
        fSrvc.persist(freebie);
        
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + file.getName())
                .contentType(MediaType.APPLICATION_OCTET_STREAM)
                .contentLength(file.length()) 
                .body(resource);
	}
	
}
