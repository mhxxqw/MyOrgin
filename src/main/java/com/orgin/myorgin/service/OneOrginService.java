package com.orgin.myorgin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.orgin.myorgin.bean.blogContent;

import java.util.List;
import java.util.Map;

public interface OneOrginService extends IService<blogContent> {
    /**
     * 查询主页信息
     * @return
     */
    List<blogContent> queryWelcome();

    /**
     * 查询最新的4篇帖子
     * @return
     */
    List<blogContent> queryBlogContentHot();

    /**
     * 查询所有类型
     * @return
     */
    List<Map<String,Object>> queryType();

    /**
     * 查询所有标签
     * @return
     */
    List<Map<String,Object>> queryTag();

    /**
     * 通过id查询博文
     * @return
     */
   blogContent queryContentById(String id);

    /**
     * 通过类型查询博文
     * @param typeId
     * @return
     */
    List<blogContent> queryByType(String typeId);

    /**
     * 通过标签查询博文
     * @return
     */
    List<blogContent> queryByTag(String tagId);

    /**
     * 查询博客时间轴
     * @param
     * @return
     */
    List<Map<String,Object>> queryblogTime();

}
