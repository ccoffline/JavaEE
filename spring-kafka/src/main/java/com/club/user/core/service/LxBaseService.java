package com.club.user.core.service;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.club.user.core.util.ReflectUtil;
import com.club.user.core.basereturn.BaseError;
import com.club.user.core.domain.LxDomain;
import com.club.user.core.persistence.LxMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.List;


abstract public class LxBaseService<M extends LxMapper<T>, T> extends ServiceImpl<M, T> {
    private static final Logger log = LoggerFactory.getLogger(LxBaseService.class);
    @Autowired
    protected DataSource dataSource;


    public EntityWrapper<T> getWrapper() {
        return new EntityWrapper<>();
    }

    public EntityWrapper<T> getWrapper(T entity) {
        return new EntityWrapper<>(entity);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateById(T entity) {
        log.info("BaseService-updateById : " + entity);
        Class<?> entityClass = entity.getClass();
        if (LxDomain.class.isAssignableFrom(entityClass)) {
            ReflectUtil.executeFieldSetter(entity, "updateDate", new Timestamp(System.currentTimeMillis()), false, "", null);
        }
        return checkUpdate(super.updateById(entity));
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateBatchById(List<T> entityList) {
        try {
            return checkUpdate(super.updateBatchById(entityList));
        } catch (RuntimeException e) {
            throw new RuntimeException();
        }
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean insertBatch(List<T> entityList) {
        try {
            return super.insertBatch(entityList);
        } catch (RuntimeException e) {
            throw new RuntimeException();
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean insertBatch(List<T> entityList, int batchSize) {
        try {
            return super.insertBatch(entityList, batchSize);
        } catch (RuntimeException e) {
            throw new RuntimeException();
        }

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean insertOrUpdateBatch(List<T> entityList) {
        try {
            return super.insertOrUpdateBatch(entityList);
        } catch (RuntimeException e) {
            throw new RuntimeException();
        }

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean insertOrUpdateBatch(List<T> entityList, int batchSize) {
        try {
            return super.insertOrUpdateBatch(entityList, batchSize);
        } catch (RuntimeException e) {
            throw new RuntimeException();
        }

    }

    boolean checkUpdate(boolean res) {
        if (!res) {
            throw new RuntimeException();
        }
        return res;
    }


    /**
     * 获取当前对象domain类型
     */
    private Class getDomainClass() {
        Class clz = this.getClass();
        Type type = clz.getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) type;
        return (Class) pt.getActualTypeArguments()[1];
    }

    @Override
    public boolean insert(T entity) {
        log.info("BaseService-insert : " + entity);
        Class<?> entityClass = entity.getClass();
        if (LxDomain.class.isAssignableFrom(entityClass)) {
            ReflectUtil.executeFieldSetter(entity, "createDate", new Timestamp(System.currentTimeMillis()), false, "", null);
            ReflectUtil.executeFieldSetter(entity, "updateDate", new Timestamp(System.currentTimeMillis()), false, "", null);
            ReflectUtil.executeFieldSetter(entity, "enableFlag", 1, false, "", null);
            ReflectUtil.executeFieldSetter(entity, "deleteFlag", 0, false, "", null);
        }
        return super.insert(entity);
    }


    public BaseError getErrorData(Exception...e){
        System.err.println("eeeee:"+e.toString());
        BaseError out = new BaseError(true);
        out.setErrorCode("|");
        out.setErrorLevel(0);
        out.setErrorDesc("|");
        for(Exception ee:e){
            out.setFlag(false);
            if(ee!=null){
                String errorString = ee.toString();
                if(errorString.contains("DuplicateKeyException")){
                    String cname=errorString.substring(errorString.indexOf("key '")+5,errorString.indexOf("_unique"));
                    out.setErrorCode(out.getErrorCode()+"REPEAT|");
                    out.setErrorDesc(out.getErrorDesc()+cname+'|');
                }
            }
        }
        return out;
    }


}
