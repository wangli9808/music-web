package cn.tedu.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Util {
	/** * 使用md5的算法进行加�? */
	public static String md5(String plainText) {
		if(plainText!=null){
			//存放哈希值结果的 byte 数组�?
			byte[] secretBytes = null;
			try {
				//getInstance("md5"):返回实现指定摘要算法�? MessageDigest 对象
				//digest(byte[] ..)使用指定�? byte 数组对摘要进行最后更新，然后完成摘要计算
				secretBytes = MessageDigest.getInstance("md5").digest(
						plainText.getBytes());
			} catch (NoSuchAlgorithmException e) {
				throw new RuntimeException("没有md5这个算法�?");
			}
			String md5code = new BigInteger(1, secretBytes).toString(16);
			for (int i = 0; i < 32 - md5code.length(); i++) {
				md5code = "0" + md5code;
			}
			return md5code;
		}else{
			return null;
		}
	}
	public static void main(String[] args) {
		System.out.println(md5("123"));
	}
}
