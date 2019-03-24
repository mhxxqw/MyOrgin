package com.orgin.myorgin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.orgin.myorgin.bean.blogContent;
import com.orgin.myorgin.mapper.OneOrginMapper;
import com.orgin.myorgin.service.OneOrginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OneOrginServiceImpl extends ServiceImpl<OneOrginMapper,blogContent> implements OneOrginService{
    @Resource
    OneOrginMapper oneOrginMapper;
    @Override
    public List<blogContent> queryWelcome() {
        List<blogContent> data =oneOrginMapper.queryBlogContent();
        for (blogContent content : data) {
            content.setContent(content.getContent().substring(0,180)+".......");
        }
        return data;
    }
    /**
     * 查询最新的帖子
     * @return
     */
    @Override
    public List<blogContent> queryBlogContentHot() {
        List<blogContent> data =oneOrginMapper.queryBlogContentHot();
        for (blogContent content : data) {
            content.setContent(content.getContent().substring(0,50)+".......");
        }
        return  data;
    }
    /**
     * 查询所有类型
     * @return
     */
    @Override
    public List<Map<String, Object>> queryType() {
        return oneOrginMapper.queryType();
    }
    /**
     * 查询所有标签
     * @return
     */
    @Override
    public List<Map<String, Object>> queryTag() {
        return oneOrginMapper.queryTag();
    }

    /**
     * 通过id查询博文
     * @param id
     * @return
     */
    @Override
    public blogContent queryContentById(String id) {
        return (blogContent) baseMapper.selectById(id);
    }

    /**
     * 通过类型查询博文
     * @param typeId
     * @return
     */
    @Override
    public List<blogContent> queryByType(String typeId) {
        Map<String,Object> param=new HashMap<>();
        param.put("belong_type",typeId);
        List<blogContent> result=baseMapper.selectByMap(param);
        for (blogContent blogContent : result) {
            blogContent.setContent(blogContent.getContent().substring(0,150)+"...");
        }
        return result;
    }

    /**
     * 通过标签查询博文
     * @return
     */
    @Override
    public List<blogContent> queryByTag(String tagId) {
        Map<String,Object> param=new HashMap<>();
        param.put("belong_tag",tagId);
        List<blogContent> result=baseMapper.selectByMap(param);
        for (blogContent blogContent : result) {
            blogContent.setContent(blogContent.getContent().substring(0,150)+"...");
        }
        return result;
    }

    /**
     * 查询博客时间轴
     * @return
     */
    @Override
    public List<Map<String, Object>> queryblogTime() {
        return oneOrginMapper.queryBlogTime();

    }
}
