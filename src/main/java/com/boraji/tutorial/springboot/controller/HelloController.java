package com.boraji.tutorial.springboot.controller;



import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class HelloController {

   @RequestMapping("/")
   public String index() {
      return "index";
   }

   @PostMapping("/hello")
   public String sayHello(@RequestParam("name") String name, Model model) {
	   Document document = new Document(PageSize.A4);
	   document.addAuthor("ROhit");
	   try {
		PdfWriter.getInstance(document, new FileOutputStream("test.pdf"));
		document.open();
		Paragraph para = new Paragraph("Hello WOrld");
		document.add(para);
		
				
	   }
	   catch (Exception e) {
		   System.out.println(e);
		// TODO: handle exception
	}
	   document.close();
	   System.out.println("document closed");
      model.addAttribute("name", name);
      return "hello";
   }
   @RequestMapping("hello2")
   public ModelAndView listFiles(ModelMap map) throws IOException
   {
       Stream<Path> list = Files.list(Paths.get("F://resources//video"));
       //Convert them into Strings and put then into List object
       List<String> videoslist = list.
               map(e->e.toString().replace("F:\\","")).
               collect(Collectors.toList());
       // return a view name with atributes
       return new ModelAndView("displayvideos","list",videoslist);
   }
   
}
