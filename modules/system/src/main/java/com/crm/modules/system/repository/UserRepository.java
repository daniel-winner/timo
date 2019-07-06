package com.crm.modules.system.repository;

import com.crm.modules.system.domain.Dept;
import com.crm.modules.system.domain.User;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * @author dxf
 * @date 2018/8/14
 */
public interface UserRepository extends BaseRepository<User, Long>, JpaSpecificationExecutor<User> {

    /**
     * 根据用户名查询用户数据
     * @param username 用户名
     * @return 用户数据
     */
    public User findByUsername(String username);

    /**
     * 根据用户名查询用户数据,且排查指定ID的用户
     * @param username 用户名
     * @param id 排除的用户ID
     * @return 用户数据
     */
    public User findByUsernameAndIdNot(String username, Long id);

    /**
     * 查找多个相应部门的用户列表
     */
    public List<User> findByDept(Dept dept);

    /**
     * 删除多条数据
     * @param ids     ID列表
     */
    public Integer deleteByIdIn(List<Long> ids);

    /**
     * 获取指定角色的所有对象
     * @return
     */
    @Query(value = "SELECT * from sys_user where status =1 and  id in (SELECT user_id from sys_user_role where role_id = :roleId)",nativeQuery = true)
    public List<User> getAllSales(@Param("roleId") Integer roleId);


}
