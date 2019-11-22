package com.ckkk.mapper;

import com.ckkk.module.Cade;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class CadeMapperTest {

    @Autowired
    private CadeMapper cadeMapper;
    @Test
    public void query() {
        System.out.println("进入query");
        List<Cade> cades = cadeMapper.queryAll();
        for (Cade cade : cades) {
            System.out.println(cade);
        }
    }
}