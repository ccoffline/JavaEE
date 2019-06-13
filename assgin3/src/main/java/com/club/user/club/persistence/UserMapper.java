package com.club.user.club.persistence;

import com.club.user.club.domain.User;
import com.club.user.core.persistence.LxMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * (User)表Mapper接口
 *
 * @since 2019-06-09 23:23:31
 */
@Mapper
public interface UserMapper extends LxMapper<User> {

}