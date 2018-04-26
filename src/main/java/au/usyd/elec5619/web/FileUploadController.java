package au.usyd.elec5619.web;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import au.usyd.elec5619.common.baseOperation;
import au.usyd.elec5619.service.VolunteerOpeService;

@Controller
@RequestMapping(value="/fileupload/**")
public class FileUploadController extends baseOperation{
	
	@Resource(name="volunteerService")
	private VolunteerOpeService volunteerService;
	
	@RequestMapping(value="/upload", method=RequestMethod.POST)
	 public void upload(HttpServletRequest req,
		      MultipartHttpServletRequest multiReq) {
		    // 获取上传文件的路径
		    String uploadFilePath = multiReq.getFile("file").getOriginalFilename();
		    System.out.println("uploadFlePath:" + uploadFilePath);
		    // 截取上传文件的文件名
		    String uploadFileName = uploadFilePath.substring(
		        uploadFilePath.lastIndexOf('\\') + 1, uploadFilePath.indexOf('.'));
		    System.out.println("multiReq.getFile()" + uploadFileName);
		    // 截取上传文件的后缀
		    String uploadFileSuffix = uploadFilePath.substring(
		        uploadFilePath.indexOf('.') + 1, uploadFilePath.length());
		    System.out.println("uploadFileSuffix:" + uploadFileSuffix);
		    FileOutputStream fos = null;
		    FileInputStream fis = null;
		    try {
		      fis = (FileInputStream) multiReq.getFile("file").getInputStream();
		      fos = new FileOutputStream(new File("d://uploadFiles//" + uploadFileName
		          + ".")
		          + uploadFileSuffix);
		      String file_address="d://uploadFiles//"+uploadFileName+"."+uploadFileSuffix;
		      byte[] temp = new byte[1024];
		      int i = fis.read(temp);
		      while (i != -1){
		        fos.write(temp,0,temp.length);
		        fos.flush();
		        i = fis.read(temp);
		      }
		      response.sendRedirect("http://localhost:8080/elec5619/volunteer/profile?vid=1&fileaddress="+file_address);
		    } catch (IOException e) {
		      e.printStackTrace();
		    } finally {
		      if (fis != null) {
		        try {
		          fis.close();
		        } catch (IOException e) {
		          e.printStackTrace();
		        }
		      }
		      if (fos != null) {
		        try {
		          fos.close();
		        } catch (IOException e) {
		          e.printStackTrace();
		        }
		      }
		    }
		  }
}
