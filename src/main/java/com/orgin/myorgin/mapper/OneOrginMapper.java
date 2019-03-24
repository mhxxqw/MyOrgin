package com.orgin.myorgin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.orgin.myorgin.bean.blogContent;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface OneOrginMapper extends BaseMapper<blogContent> {
    /**
     * 查询所有文章
     * @return
     */
    @Select("SELECT * FROM  blog_content GROUP BY  create_time desc")
    public List<blogContent> queryBlogContent();

    /**
     * 查询最近4篇文章(最新的帖子)
     * @return
     */
    @Select("SELECT * FROM  blog_content GROUP BY  create_time desc LIMIT 0,4")
    public List<blogContent> queryBlogContentHot();

    /**
     * 查询所有类型
     * @return
     */
    @Select("SELECT * FROM  blog_type")
    public List<Map<String,Object>> queryType();

    /**
     * 查询所有标签
     * @return
     */
    @Select("SELECT * FROM  blog_tag")
    public List<Map<String,Object>> queryTag();

    /**
     * 查询博客时间轴
     * @return
     */
    @Select("SELECT * from blog_time")
    public List<Map<String,Object>> queryBlogTime();

}

