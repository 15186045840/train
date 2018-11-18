package com.hk.service;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Service;

import com.hk.bean.User;

@Service
public class PasswordService {

    private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

    private String algorithmName = "md5";
    private int hashIterations = 2;

    public void encryptPassword(User user) {

        user.setuPasswordSalt(randomNumberGenerator.nextBytes().toHex());

        String newPassword = new SimpleHash(
                algorithmName,
                user.getuPassword(),
                ByteSource.Util.bytes(user.getuId()+user.getuPasswordSalt()),
                hashIterations).toHex();
        user.setuPassword(newPassword);
    }
}
