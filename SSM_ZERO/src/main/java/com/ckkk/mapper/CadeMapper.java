package com.ckkk.mapper;

import com.ckkk.module.Cade;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CadeMapper {
    public List<Cade> queryAll();
    public void addPower(@Param("addname") String addname,@Param("power") double power);
    public void delPower(@Param("delname") String delname,@Param("power") double power);
}
