package com.crm.modules.system.service;

import com.crm.modules.system.domain.Upload;

/**
 * @author dxf
 * @date 2018/11/02
 */
public interface UploadService {

    /**
     * 获取文件sha1值的记录
     */
    Upload getBySha1(String sha1);

    /**
     * 保存文件上传
     * @param upload 文件上传实体类
     */
    Upload save(Upload upload);
}

