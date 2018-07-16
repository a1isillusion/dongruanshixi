package dongruan;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
public File myFile;
public String myFileFileName;
public String myFileContentType;
public File getMyFile() {
	return myFile;
}
public void setMyFile(File myFile) {
	this.myFile = myFile;
}
public String getMyFileFileName() {
	return myFileFileName;
}
public void setMyFileFileName(String myFileFileName) {
	this.myFileFileName = myFileFileName;
}
public String getMyFileContentType() {
	return myFileContentType;
}
public void setMyFileContentType(String myFileContentType) {
	this.myFileContentType = myFileContentType;
}
public String upload() {
	System.out.println(myFileFileName);
	System.out.println(myFileContentType);
	String realpath=ServletActionContext.getServletContext().getRealPath("/WEB-INF/file");
	System.out.println(realpath);
	File file=new File(realpath);
	if(!file.exists())file.mkdirs();
	try {
		FileUtils.copyFile(myFile, new File(file, myFileFileName));
	} catch (IOException e) {
		e.printStackTrace();
	}
	return SUCCESS;
}
}
