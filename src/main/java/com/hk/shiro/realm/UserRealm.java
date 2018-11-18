package com.hk.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.hk.bean.User;
import com.hk.service.UserService;

public class UserRealm extends AuthorizingRealm{

	@Autowired
	private UserService userService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String userId=(String)principals.getPrimaryPrincipal();
		
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(userService.findJurisdictionsByUserId(userId));
		authorizationInfo.setStringPermissions(userService.findJurisdictionsByUserId(userId));
		
		return authorizationInfo;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userId=(String)token.getPrincipal();
		User user=userService.getUserByUserId(userId);
		if(user==null){
			throw new UnknownAccountException();
		}
		SimpleAuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(
				user.getuId(),
				user.getuPassword(),
				ByteSource.Util.bytes(user.getuId()+user.getuPasswordSalt()),
				getName());
		return authenticationInfo;
	}

}
