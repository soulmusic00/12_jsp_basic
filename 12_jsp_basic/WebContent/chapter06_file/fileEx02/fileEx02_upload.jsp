<%@page import="_06_file.FileDao"%>
<%@page import="_06_file.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드 진행</title>
</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
		
		String location = "D:\\ABU\\12_web_shared_folder\\workspace\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
	
		MultipartRequest multi = new MultipartRequest(request,
													  location,
													  1024 * 1024 * 30,
													  "utf-8",
													  new DefaultFileRenamePolicy());
	
		String userName = multi.getParameter("userName");
		String title = multi.getParameter("title");
		
		Enumeration<?> files = multi.getFileNames();
		
		
		ArrayList<FileDto> fileList = new ArrayList<FileDto>();
		
		while (files.hasMoreElements()) {
			
			String element 		    = (String)files.nextElement();				
			String filesystemName   = multi.getFilesystemName(element);
			String originalFileName = multi.getOriginalFileName(element);
			String contentType      = multi.getContentType(element);
			long length             = multi.getFile(element).length();
			
			FileDto fileDto = new FileDto();
			fileDto.setUserName(userName);
			fileDto.setTitle(title);
			fileDto.setFilesystemName(filesystemName);
			fileDto.setOriginalFileName(originalFileName);
			fileDto.setContentType(contentType);
			fileDto.setLength(length);
			
			fileList.add(fileDto);
			
		}
		
		FileDao.getInstance().insertFiles(fileList);
		
	%>

	<script>
		alert("파일이 업로드 되었습니다.");
		location.href = "fileEx02_list.jsp";
	</script>

</body>
</html>



