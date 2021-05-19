// 时间格式化
function date_formatter(itemId) {
	var myDate =  new Date($(itemId).val());
	myDate.getFullYear();      //获取完整的年份(4位,1970-????)
	myDate.getMonth();         //获取当前月份(0-11,0代表1月)
	myDate.getDate();          //获取当前日(1-31)
	myDate.getHours();         //获取当前小时数(0-23)
	myDate.getMinutes();       //获取当前分钟数(0-59)
	myDate.getSeconds();       //获取当前秒数(0-59)
	// myDate.getMilliseconds();  //获取当前毫秒数(0-999)
	myDate = myDate.getFullYear() + "-" + (myDate.getMonth()-(-1)) + "-" + myDate.getDate()
	+ " " + myDate.getHours()  + ":" + myDate.getMinutes()  + ":" + myDate.getSeconds();
	$(itemId).attr("value",myDate);
	return myDate;
}

// 日期格式化
th:value="${#dates.format(materials.createTime, 'yyyy-MM-dd hh:mm:ss')}"
// 日期格式化 moment.js
 formatter:function (value) {
    return value?moment(value).format("YYYY-MM-DD HH:mm:ss"):'';
}
// 合并单元格
 $('#exampleTable').bootstrapTable('mergeCells', {index: 0, field: 'department_code', colspan: 2, rowspan: 0});
 
// 拼接onclick方法带参数
onclick = contentmap(&quot;'+useridarr[i]+'&quot;)
&quot;  //代表 (') 十进制 &#34; 十六进制 &#x22;
&amp; //代表 (&)
&lt; //代表 (<)
&gt; //代表 (>)
&nbsp; //代表 ( )空格

// 样式居中 
<div class="form-group" style="width:100% !important;text-align: center;"></div>

// thymeleaf 回显下拉框的值
<select th:name="tid">
		<option th:each="type:${allCommodityType}" th:selected="${type.id}==${commodity.tid}"  th:value="${type.id}" th:text="${type.typeName}" th:name="tid"></option>
</select>

// select 选中
<select  class="form-control" id="flag" name="flag">
					<option value="0" th:selected="${admin.flag==0}">否</option>
					<option value="1" th:selected="${admin.flag==1}">是</option>	
</select>


<html lang="zh_CN" xmlns:th="http://www.thymeleaf.org" xmlns:shiro="http://www.pollix.at/thymeleaf/shiro">