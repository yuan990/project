package workPlatform;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.realm.Realm;

public class MyRealm implements Realm {

	public String getName() {
		// TODO Auto-generated method stub
		return "MyRealm";
	}

	public boolean supports(AuthenticationToken token) {
		// TODO Auto-generated method stub
		return token instanceof UsernamePasswordToken;
	}

	public AuthenticationInfo getAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		String username = (String) token.getPrincipal(); // �õ��û���
		String password = new String((char[]) token.getCredentials()); // �õ�����
		if (!"zhang".equals(username)) {
			throw new UnknownAccountException(); // ����û�������
		}
		if (!"123".equals(password)) {
			throw new IncorrectCredentialsException(); // ����������
		}
		// ��������֤��֤�ɹ�������һ��AuthenticationInfoʵ�֣�
		return new SimpleAuthenticationInfo(username, password, getName());
	}

}
