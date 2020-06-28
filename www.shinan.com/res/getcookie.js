		
		
		var username; 
		// 获取指定名称的cookie
		function getCookie(name){
			var strcookie = document.cookie;//获取cookie字符串
			var arrcookie = strcookie.split("; ");//分割
			//遍历匹配
			for ( var i = 0; i < arrcookie.length; i++) {
				var arr = arrcookie[i].split("=");
				if (arr[0] == name){
					return arr[1];
				}
			}
			return "";
		}

		// 打印所有cookie
		function print() {
			var strcookie = document.cookie;//获取cookie字符串
			var arrcookie = strcookie.split(";");//分割

			//遍历匹配
			for ( var i = 0; i < arrcookie.length; i++) {
				var arr = arrcookie[i].split("=");
				console.log(arr[0] +"：" + arr[1]);
			}
		}
  
		
		function getId(){
			tmp = getCookie('uid');
			console.log(tmp)
			document.getElementById("txt_id").value = tmp;
		}//获取发帖者id随着帖子一起post
