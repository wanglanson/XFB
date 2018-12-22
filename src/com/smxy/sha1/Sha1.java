package com.smxy.sha1;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;

public class Sha1 {
	public String sha1(String password) {
		try {	
			/*

			 * SHA1加密

			 */
			Random ranGen = new SecureRandom();// 生成安全随机种子
			byte[] aesKey = new byte[20];
			ranGen.nextBytes(aesKey);// 生成用户指定的随机字节数
			String salt = new String(aesKey,"utf-8");
			//System.out.println("加密salt："+salt);
			password += salt;
			byte[] srcBytes = password.getBytes();
			MessageDigest md5 = MessageDigest.getInstance("SHA1");
			md5.update(srcBytes);// 使用srcBytes更新摘要
			byte[] resultBytes = md5.digest();// 完成哈希计算，得到result
			password = new String(resultBytes,"utf-8");
			//System.out.println("加密password:"+password);
			return password;
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return password;

	}
}
