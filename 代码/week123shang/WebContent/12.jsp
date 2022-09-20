<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="imgUp">
     <label>头像单图</label>
     <input type="file" name='photo' class="mui-input-clear" id='upimg' style="opacity: 0;" >
      < img src="images/up.png" alt="" id='imgContent'>
</div>

js

$('#upimg').on('change',function(){                                                 //选中图片后展示在页面
    var filePath = $(this)[0].files[0].name //获取到input的value，里面是文件的路径
   //console.log(filePath) //1.png
   fileFormat = filePath.split('.')[1].toLowerCase()
   //console.log(fileFormat) //png
   src = window.URL.createObjectURL(this.files[0]) //转成可以在本地预览的格式
   //console.log(src) //blob:null/11ea5a2d-7270-4035-b5c4-4e50c5c061e7

  // 检查是否是图片
  if( !fileFormat.match(/png|jpg|jpeg/) ) {
      alert('上传错误,文件格式必须为：png/jpg/jpeg')
     return
  }

$('#imgContent').attr('src',src)

})
</body>
</html>