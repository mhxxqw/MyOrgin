package com.orgin.myorgin.bean;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * 博客内容表
 */
@Data
@TableName("blog_content")
public class blogContent {
    @TableId(value = "id", type = IdType.AUTO)
    Integer id;
    String title;
    String content;
    String status;
    String mediaMaterials;
    String createTime;
    Integer belongType;
    Integer belongTag;
    String previewImg;
}
