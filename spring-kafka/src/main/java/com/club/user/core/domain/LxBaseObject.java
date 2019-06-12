package com.club.user.core.domain;

import com.baomidou.mybatisplus.annotations.TableId;
import com.club.user.core.basereturn.ReturnInterface;
import lombok.Data;

import java.io.Serializable;

@Data
abstract public class LxBaseObject implements Serializable, ReturnInterface {
    @TableId
    protected Long id;
}