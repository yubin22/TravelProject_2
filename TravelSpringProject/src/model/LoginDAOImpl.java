package model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.orm.ibatis.SqlMapClientTemplate;

public class LoginDAOImpl implements LoginDAO {
	private SqlMapClientTemplate sqlMapClientTemplate; //org.springframework.orm.ibatis.SqlMapClientTemplate

	//wirte only
	public void setSqlMapClientTemplate(SqlMapClientTemplate sqlMapClientTemplate) {
		this.sqlMapClientTemplate = sqlMapClientTemplate;
	}

	@Override
	public LoginDTO getLogin(LoginDTO dto) { //중복데이터 고려 (dto에는 유일성이 보장된 key)
		LoginDTO result = (LoginDTO) sqlMapClientTemplate.queryForObject("getLogin", dto);
		return result;
	}

	@Override
	public void insertLogin(LoginDTO dto) {
		sqlMapClientTemplate.insert("insertLogin", dto);
	}

	@Override
	public int updateLogin(LoginDTO dto) {
		return sqlMapClientTemplate.update("updateLogin", dto);
	}

	@Override
	public int deleteLogin(LoginDTO dto) {
		return sqlMapClientTemplate.delete("deleteLogin", dto);
	}

	//아이디 중복 체크
	@Override
	public int selectAllId(String id) {
		ResultSet result = (ResultSet) sqlMapClientTemplate.queryForObject("idCheck", id);
		int res = -1;		//오류 시
		try {
			if(result.next()) {
				res = 1; //존재한다면
				System.out.println("result 값 : "+result);
			}else {
				res=0; //존재 안 하면
				System.out.println("result 값 : "+result);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
