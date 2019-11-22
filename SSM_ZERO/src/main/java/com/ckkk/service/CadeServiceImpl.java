package com.ckkk.service;

import com.ckkk.mapper.CadeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CadeServiceImpl implements CadeService {

    @Autowired(required = true)
    private CadeMapper mapper;

    public void xPower(String addname, String delname, double power) {
        mapper.addPower(addname,power);
        mapper.delPower(delname,power);
    }
}
