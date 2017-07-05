package com.banksys.util;

import java.security.MessageDigest;

/**
 * Created by lakshithar on 7/5/2017.
 *
 */
public class SHAEncoder {
    public static String SHA256(String word) {
        try {
            MessageDigest md;
            md = MessageDigest.getInstance("SHA-256");
            byte[] sha1hash;
            md.update(word.getBytes("iso-8859-1"), 0, word.length());
            sha1hash = md.digest();
            return convertToHex(sha1hash);
        } catch (Exception e) {
            return "";
        }
    }

    public static String SHA1(String word) {
        try {
            MessageDigest md;
            md = MessageDigest.getInstance("SHA-1");
            byte[] sha1hash;
            md.update(word.getBytes("iso-8859-1"), 0, word.length());
            sha1hash = md.digest();
            return convertToHex(sha1hash);
        } catch (Exception e) {
            return "";
        }
    }

    public static String convertToHex(byte[] data) {
        StringBuilder buf = new StringBuilder();
        for (byte aData : data) {
            int halfbyte = (aData >>> 4) & 0x0F;
            int two_halfs = 0;
            do {
                if ((0 <= halfbyte) && (halfbyte <= 9))
                    buf.append((char) ('0' + halfbyte));
                else
                    buf.append((char) ('a' + (halfbyte - 10)));
                halfbyte = aData & 0x0F;
            } while (two_halfs++ < 1);
        }
        return buf.toString();
    }
}
