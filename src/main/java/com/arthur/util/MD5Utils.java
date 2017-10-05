package com.arthur.util;

import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Arthur on 2017/10/5.
 */
public class MD5Utils {

    public static String encoderByMd5(String str) {
        MessageDigest md5 = null;
        String newstr = null;
        try {
            md5 = MessageDigest.getInstance("MD5");

            md5.update(str.getBytes());
            byte b[] = md5.digest();
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int j = 0; j < b.length; j++) {
                i = b[j];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));
            }

            newstr = buf.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return newstr;
    }
}
