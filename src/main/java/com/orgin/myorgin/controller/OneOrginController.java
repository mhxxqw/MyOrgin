package com.orgin.myorgin.controller;

import com.orgin.myorgin.bean.blogContent;
import com.orgin.myorgin.service.OneOrginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class OneOrginController {
    @Autowired
    public OneOrginService oneOrginService;

    /**
     * 进入欢迎页
     *
     * @return
     */
    @RequestMapping("/index")
    public String toIndex(HttpServletRequest request, Model model) {
        //所有文章
        List<blogContent> wlecomeData = oneOrginService.queryWelcome();
        //查詢最新的帖子
        List<blogContent> hotData = oneOrginService.queryBlogContentHot();
        //所有标签
        List<Map<String, Object>> tagData = oneOrginService.queryTag();
        //所有分类
        List<Map<String, Object>> typeData = oneOrginService.queryType();
        //查询博客时间轴
        List<Map<String, Object>> blogTime = oneOrginService.queryblogTime();
        model.addAttribute("wlecomeData", wlecomeData);
        model.addAttribute("tagData", tagData);
        model.addAttribute("typeData", typeData);
        model.addAttribute("hotData", hotData);
        model.addAttribute("blogTime", blogTime);
        return "blog-left-sidebar";
    }

    /**
     * 详情页面
     * @param request
     * @param contentId
     * @return
     */
    @RequestMapping("/details")
    public String todetails(HttpServletRequest request,String contentId,Model model) {
        //通过id查询博文
        blogContent data = oneOrginService.queryContentById(contentId);
        model.addAttribute("contentData", data);
        return "blog-single";
    }

    /**
     * 通过分类查询文章
     *
     * @param typeId
     * @param model
     * @return
     */
    @RequestMapping("/queryByType")
    public String queryByType(String typeId,Model model) {
        //如果是生活
        if(typeId.equals("1")){
            return "portfolio";
        }
        List<blogContent> classData= oneOrginService.queryByType(typeId);
        model.addAttribute("classData",classData);
        return "blog-grid";
    }
    /**
     * 通过标签查询文章
     *
     * @param tagId
     * @param model
     * @return
     */
    @RequestMapping("/queryByTag")
    public String queryByTag(String tagId,Model model) {
        List<blogContent> classData= oneOrginService.queryByTag(tagId);
        model.addAttribute("classData",classData);
        return "blog-grid";
    }
    /**
     * 跳转到生活详情
     * @param tagId
     * @param model
     * @return
     */
    @RequestMapping("/toportfolioSingle")
    public String toportfolioSingle(String tagId,Model model) {
        return "portfolio-single";
    }
}
