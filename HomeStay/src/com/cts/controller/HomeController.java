package com.cts.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.cts.model.Owner;
import com.cts.model.PgDetailsnew;
import com.cts.service.HomeServicesImpl;
import com.cts.dao.pgdaoimpl;


@Controller
public class HomeController {
	
	@Autowired(required=true)
	private HomeServicesImpl homeservice;

	@Autowired(required=true)
	private pgdaoimpl pg1;
	
	public void setHomeservice(HomeServicesImpl homeservice) {
		this.homeservice = homeservice;
	}
	

		
	@RequestMapping("/indexx1")
	public org.springframework.web.servlet.ModelAndView index1()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("pgdetails", new PgDetailsnew());
		mv.setViewName("AddPg");
		return mv;
	}
	
	@RequestMapping("/home1")/*pg information is added  */
	public ModelAndView addPlace(@ModelAttribute("pgdetails")PgDetailsnew upload,HttpSession session, @RequestParam CommonsMultipartFile fileUpload) throws UnsupportedEncodingException
	{
		 ModelAndView mav = new ModelAndView();
		String ownerUser=(String)session.getAttribute("ownerUser");
		Owner owner=homeservice.getOwnerByUser(ownerUser);
		PgDetailsnew uploadFile = new PgDetailsnew();
     	uploadFile.setHomestay(upload.getHomestay());
        uploadFile.setAddressline1(upload.getAddressline1());
        uploadFile.setAddressline2(upload.getAddressline2());
        uploadFile.setAltcontactno(upload.getAltcontactno());
        uploadFile.setContactno(upload.getContactno());
        uploadFile.setZipcode(upload.getZipcode());
        uploadFile.setCity(upload.getCity());
        uploadFile.setState(upload.getState());
        uploadFile.setMailId(upload.getMailId());
        uploadFile.setFaclity1(upload.getFaclity1());
        uploadFile.setFaclity2(upload.getFaclity2());
        uploadFile.setFaclity3(upload.getFaclity3());
        uploadFile.setFaclity4(upload.getFaclity4());
        uploadFile.setFaclity5(upload.getFaclity5());
        uploadFile.setFaclity6(upload.getFaclity6());
        uploadFile.setFaclity7(upload.getFaclity7());
        uploadFile.setFaclity8(upload.getFaclity8());
        uploadFile.setFaclity9(upload.getFaclity9());
        uploadFile.setFaclity10(upload.getFaclity10());
        uploadFile.setFileName(fileUpload.getOriginalFilename());
        uploadFile.setImage(fileUpload.getBytes());
		session.setAttribute("ownerData",owner);
		uploadFile.setOwner(owner);
		byte a[]=fileUpload.getBytes();
        byte[] img=Base64.encodeBase64(a);
       	String base64enc = new String(img,"UTF-8");
       	uploadFile.setEncimg(base64enc);
		homeservice.addPgdetails(uploadFile);
		String first_name=owner.getFirst_name();
		String last_name=owner.getLast_name();
		String email=owner.getEmail();
		String contact_number=owner.getContact_number();
		String user_idd=owner.getUser_id();
		mav.addObject("first_name",first_name);
		mav.addObject("last_name",last_name);
		mav.addObject("email",email);
		mav.addObject("contact_number",contact_number);
		mav.addObject("user_idd",user_idd);
		mav.setViewName("welcomeowner");
		return mav;
	}
	@RequestMapping(value="/userdashboard1", method=RequestMethod.GET)/*owner can see all his registered pg*/
    public ModelAndView getAllPG(HttpSession session)
    {
                    ModelAndView mav = new ModelAndView();
                    System.out.println((String)session.getAttribute("ownerUser"));
                    Owner ownerData = homeservice.getOwnerByUser((String)(session.getAttribute("ownerUser")));
                    System.out.println(ownerData.getFirst_name());
                    List<PgDetailsnew> pg = ownerData.getPgdetails();
                    mav.addObject("list1", pg);
                    mav.setViewName("UserDashboard1");
                    return mav;                        
    }
	
	@RequestMapping(value="/updatePgDetails", method=RequestMethod.GET) /*owner can update his pg information*/
    public ModelAndView UpdateData(@ModelAttribute("updatepgdetails")PgDetailsnew pgupdate/*,@RequestParam("fileUpload") byte []arr*/,@RequestParam("id")int id,HttpSession session) throws UnsupportedEncodingException
    {
                    ModelAndView mav = new ModelAndView();
                    PgDetailsnew pgdetails=pg1.getdetails(id);
                    pgupdate.setEncimg(pgdetails.getEncimg());
                    pgupdate.setImage(pgdetails.getImage());
                    pgupdate.setOwner(homeservice.getOwnerByUser((String)(session.getAttribute("ownerUser"))));
                              
                    homeservice.PgUpdate(pgupdate);
                    Owner ownerData = homeservice.getOwnerByUser((String)(session.getAttribute("ownerUser")));
                    List<PgDetailsnew> pg = ownerData.getPgdetails();
                    mav.addObject("list1", pg);
                    mav.setViewName("UserDashboard1");
                    return mav;                        
    }
	@RequestMapping("userdashboard2")/*pg are filtered based on multiple filters */
    public ModelAndView getfilterpg(@RequestParam("a1") String faclity1,@RequestParam("a2") String faclity8,@RequestParam("lat") String latitude,@RequestParam("log") String longitude,@RequestParam("range_in_m") String range_in_m, HttpSession session) 
    {
		System.out.println(faclity1+" "+faclity8);
                    ModelAndView mav = new ModelAndView();
                    List<PgDetailsnew> pg = homeservice.getpgbyfilter(faclity1,faclity8,latitude,longitude,range_in_m);
                    mav.addObject("list", pg);
                    mav.setViewName("userprofile");
                    return mav;                        
    }
	
	@RequestMapping("userdashboard3")
    public ModelAndView getfilterpg1() 
    {
                    ModelAndView mav = new ModelAndView();
                    System.out.println("===done1");
                    List<PgDetailsnew> locations = homeservice.showLocations();
                    System.out.println("===done2");
                                    
                    for(int i =0;i<locations.size();i++)
                    {
                    	System.out.println(locations.get(i).getId());
                    }
                    
                    return mav;                        
    }
	

}
