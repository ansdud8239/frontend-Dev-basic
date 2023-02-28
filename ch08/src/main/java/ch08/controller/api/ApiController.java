package ch08.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch08.dto.JsonResult;
import ch08.dto.XmlResult;
import ch08.vo.GuestbookVo;

@Controller
@RequestMapping("/api")
public class ApiController {
	@ResponseBody
	@GetMapping("/html")
	public String html() {
		return "<h1>Ajax연습</h1><p>HTML 데이터</p>";
	}

	@ResponseBody
	@GetMapping("/text")
	public String text() {
		return "Text 데이타";
	}

	@ResponseBody
	@GetMapping("/xml")
	public XmlResult xml() {
		XmlResult.GuestbookVo vo = new XmlResult.GuestbookVo();
		vo.setNo(1L);
		vo.setName("둘리");
		vo.setMessage("호이~");
		return XmlResult.success(vo);
	}

	// @RequestMapping(value = "/json",method = RequestMethod.GET)
	@GetMapping("/json")
	public JsonResult json() {
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(1L);
		vo.setName("둘리");
		vo.setMessage("호이~");
		return JsonResult.success(vo);
	}
}
