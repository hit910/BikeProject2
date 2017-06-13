package com.sist.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.sist.qnaboard.QnaDAO;
import com.sist.qnaboard.QnaVO;

@Controller
public class qnaController {
	@Autowired
	private QnaDAO dao;
	/*@RequestMapping("board.do")
	public String qnaboard(String url){
		return "qnaboard/qnaboard";
	}*/
	@RequestMapping("qnaboard/qnaboard.do")
	public String databoard_list(String page,Model model){
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		
		Map map=new HashMap();
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		
		map.put("start", start);
		map.put("end", end);
		
		List<QnaVO> list=dao.databoardListData(map);
		int totalpage=dao.databoardTotalPage();
		
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", totalpage);
		
		return "qnaboard/qnaboard";
	}
	
	@RequestMapping("insert.do")
	public String databoard_insert(){
		return "qnaboard/insert";
	}
	
	@RequestMapping("insert_ok.do")
	public String databoard_insert_ok(QnaVO uploadForm)
	throws Exception{
		
		List<MultipartFile> list=uploadForm.getFiles();
		String temp="";
		String temp1="";
		if(list !=null && list.size()>0){
			for(MultipartFile mf:list){
				String fn=mf.getOriginalFilename();
				String ext=fn.substring(fn.lastIndexOf('.')+1);
				String save=fn.substring(0, fn.lastIndexOf('.'))
						+System.currentTimeMillis()+"."+ext;
				File file=new File("C:\\download\\"+save);
				mf.transferTo(file);
				temp+=save+",";
				temp1+=file.length()+",";
			}
			uploadForm.setFilename(temp.substring(0, temp.lastIndexOf(',')));
			uploadForm.setFilesize(temp1.substring(0, temp1.lastIndexOf(',')));
			uploadForm.setFilecount(list.size());
		}else{
			uploadForm.setFilename("");
			uploadForm.setFilesize("");
			uploadForm.setFilecount(0);
		}
		dao.databoardInsert(uploadForm);
		return "redirect:qnaboard/qnaboard.do";
	}
	
	@RequestMapping("content.do")
	public String databoard_content(int no,Model model){
		QnaVO vo=dao.databoardContentData(no);
		
		if(vo.getFilecount()!=0){
			StringTokenizer st=
					new StringTokenizer(vo.getFilename(), ",");
			List<String> list=new ArrayList<String>();
			while(st.hasMoreTokens()){
				list.add(st.nextToken());
			}
			vo.setNameList(list);
		}
		model.addAttribute("vo", vo);
		
		return "qnaboard/content";
	}
	
	@RequestMapping("download.do")
	public void databoard_download(String fn,HttpServletResponse response){
		try{
			response.setHeader("Content-Disposition", 
					"attachment;filename="+URLEncoder.encode(fn,"EUC-KR"));
			File file=new File("c:\\download\\"+fn);
			response.setContentLength((int)file.length());
			BufferedInputStream bis=
					new BufferedInputStream(new FileInputStream(file));
			BufferedOutputStream bos=
					new BufferedOutputStream(response.getOutputStream());
			int i=0;
			byte[] buffer=new byte[1024];
			while((i=bis.read(buffer,0,1024))!=-1){
				bos.write(buffer, 0, i);
			}
			bis.close();
			bos.close();
			
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}	
	}
	
	@RequestMapping("delete.do")
	public String databoardDelete(int no,Model model){
		model.addAttribute("no", no);
		return "qnaboard/delete";
	}
	@RequestMapping("delete_ok.do")
	public String databoardDeleteOk(int no,String pwd,Model model){
		QnaVO vo=dao.databoardDeleteData(no);
		
		boolean bCheck=false;
		if(pwd.equals(vo.getPwd())){
			bCheck=true;
			if(vo.getFilecount()!=0){
				StringTokenizer st=
						new StringTokenizer(vo.getFilename(), ",");
				while(st.hasMoreTokens()){
					File file=new File("c:\\download\\"+st.nextToken());
					file.delete();
				}
			}//end if
			dao.databoardDelete(no);
		}else{
			bCheck=false;
		}
		model.addAttribute("bCheck", bCheck);
		return "qnaboard/delete_ok";
	}
	
	@RequestMapping("update.do")
	public String databoardUpdate(int no,Model model){
		QnaVO vo=dao.databoardUpdateData(no);
		model.addAttribute("vo", vo);
		return "qnaboard/update";
	}
	@RequestMapping("update_ok.do")
	public String databoardUpdateOk(QnaVO uploadForm,Model model)
	throws Exception{
		QnaVO vo=dao.databoardDeleteData(uploadForm.getNo());
		boolean bCheck=false;
		
		if(vo.getPwd().equals(uploadForm.getPwd())){
			bCheck=true;
			List<MultipartFile> list=uploadForm.getFiles();
			if(list!=null && list.size()>0){
				if(vo.getFilecount()!=0){
					StringTokenizer st=
							new StringTokenizer(vo.getFilename(), ",");
					while(st.hasMoreTokens()){
						File file=new File("c:\\download\\"+st.nextToken());
						file.delete();
					}
				}
				String temp="",temp1="";
				for(MultipartFile mf:list){
					String fn=mf.getOriginalFilename();
					String ext=fn.substring(fn.lastIndexOf('.')+1);
					String save=fn.substring(0, fn.lastIndexOf('.'))
							+System.currentTimeMillis()+"."+ext;
					File file=new File("c:\\download\\"+save);
					mf.transferTo(file);
					temp+=save+",";
					temp1+=file.length()+",";
				}
				uploadForm.setFilename(temp.substring(0, temp.lastIndexOf('.')));
				uploadForm.setFilesize(temp1.substring(0, temp1.lastIndexOf(',')));
				uploadForm.setFilecount(list.size());
			}else{
				if(vo.getFilecount() !=0){
					uploadForm.setFilename(vo.getFilename());
					uploadForm.setFilesize(vo.getFilesize());
					uploadForm.setFilecount(vo.getFilecount());
				}else{
					uploadForm.setFilename("");
					uploadForm.setFilesize("");
					uploadForm.setFilecount(0);
				}
			}
			dao.databoardUpdate(uploadForm);
		}
		model.addAttribute("no", uploadForm.getNo());
		model.addAttribute("bCheck", bCheck);
		return "qnaboard/update_ok";
	}
	
	@RequestMapping("reply.do")
	public String board_reply(Model model,int no){
		model.addAttribute("no", no);
		return "qnaboard/reply";
	}
	@RequestMapping("reply_ok.do")
	public String board_reply_ok(QnaVO vo,int pno, QnaVO uploadForm)
		throws Exception{
		
		QnaVO pvo=dao.boardParentData(pno);
		dao.boardStepIncrement(pvo);
		
		vo.setGroup_id(pvo.getGroup_id());
		vo.setGroup_step(pvo.getGroup_step()+1);
		vo.setGroup_tab(pvo.getGroup_tab()+1);
		vo.setRoot(pno);
		
		List<MultipartFile> list=uploadForm.getFiles();
		String temp="";
		String temp1="";
		if(list !=null && list.size()>0){
			for(MultipartFile mf:list){
				String fn=mf.getOriginalFilename();
				String ext=fn.substring(fn.lastIndexOf('.')+1);
				String save=fn.substring(0, fn.lastIndexOf('.'))
						+System.currentTimeMillis()+"."+ext;
				File file=new File("C:\\download\\"+save);
				mf.transferTo(file);
				temp+=save+",";
				temp1+=file.length()+",";
			}
			uploadForm.setFilename(temp.substring(0, temp.lastIndexOf(',')));
			uploadForm.setFilesize(temp1.substring(0, temp1.lastIndexOf(',')));
			uploadForm.setFilecount(list.size());
		}else{
			uploadForm.setFilename("");
			uploadForm.setFilesize("");
			uploadForm.setFilecount(0);
		}
		dao.boardReplyInsert(vo,uploadForm);
		dao.boardDepthIncreament(pno);
		return "redirect:/qnaboard/qnaboard.do";
	}
	
}