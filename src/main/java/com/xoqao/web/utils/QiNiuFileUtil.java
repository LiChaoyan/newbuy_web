package com.xoqao.web.utils;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;

/**
 * 说明：七牛文件工具类
 * Author: lovegod
 * Date:  2017/8/21.
 * Email:dx96_j@163.com
 */
public class QiNiuFileUtil {

    public static String ACCESSKEY = "uXPZgqQ8wGmc215TmZbFCAIkz_L6iMFOp2ntXW-J";
    private static String SECRETKEY = "ej6pDQGRFRoxwcEgu3Na-ctpBN2bynYQShXDWWEL";
    private static String BUCKET = "newbuy";

    /**
     * 根据文件路径上传
     *
     * @param path
     */
    public static void uploadByPath(String path) {
        //构造一个带指定Zone对象的配置类
        Configuration cfg = new Configuration(Zone.zone2());
//...其他参数参考类注释

        UploadManager uploadManager = new UploadManager(cfg);
//...生成上传凭证，然后准备上传
        String accessKey = ACCESSKEY;
        String secretKey = SECRETKEY;
        String bucket = BUCKET;
//如果是Windows情况下，格式是 D:\\qiniu\\test.png，ubuntu：/home/qiniu/test.png
        String localFilePath = path;
//默认不指定key的情况下，以文件内容的hash值作为文件名
        String key = null;
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);

        try {
            Response response = uploadManager.put(localFilePath, key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
    }

    /**
     * 根据字节数据上传
     */
    public static String updalodByByte(byte[] bytes) {
        //构造一个带指定Zone对象的配置类
        Configuration cfg = new Configuration(Zone.zone2());
//...其他参数参考类注释

        UploadManager uploadManager = new UploadManager(cfg);
//...生成上传凭证，然后准备上传
        String accessKey = ACCESSKEY;
        String secretKey = SECRETKEY;
        String bucket = BUCKET;

//默认不指定key的情况下，以文件内容的hash值作为文件名
        String key = null;

        //            byte[] uploadBytes = "hello qiniu cloud".getBytes("utf-8");
        byte[] uploadBytes = bytes;
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);

        try {
            Response response = uploadManager.put(uploadBytes, key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);
            return putRet.hash;
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
        return null;
    }

    /**
     * 根据io流上传
     */
    public static void uploadByIo() {
        //构造一个带指定Zone对象的配置类
        Configuration cfg = new Configuration(Zone.zone2());
//...其他参数参考类注释

        UploadManager uploadManager = new UploadManager(cfg);
//...生成上传凭证，然后准备上传
        String accessKey = ACCESSKEY;
        String secretKey = SECRETKEY;
        String bucket = BUCKET;

//默认不指定key的情况下，以文件内容的hash值作为文件名
        String key = null;

        try {
            byte[] uploadBytes = "hello qiniu cloud".getBytes("utf-8");
            ByteArrayInputStream byteInputStream = new ByteArrayInputStream(uploadBytes);
            Auth auth = Auth.create(accessKey, secretKey);
            String upToken = auth.uploadToken(bucket);

            try {
                Response response = uploadManager.put(byteInputStream, key, upToken, null, null);
                //解析上传成功的结果
                DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
                System.out.println(putRet.key);
                System.out.println(putRet.hash);
            } catch (QiniuException ex) {
                Response r = ex.response;
                System.err.println(r.toString());
                try {
                    System.err.println(r.bodyString());
                } catch (QiniuException ex2) {
                    //ignore
                }
            }
        } catch (UnsupportedEncodingException ex) {
            //ignore
        }
    }

}
