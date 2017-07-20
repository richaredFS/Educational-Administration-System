package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Admin;
import cn.itcast.ssm.po.AdminCustom;

public interface AdminCustomMapper {

	AdminCustom selectAdminByUsername(String username);

	List<String> selectUsername();

	void insertAdmin(Admin admin);


}
