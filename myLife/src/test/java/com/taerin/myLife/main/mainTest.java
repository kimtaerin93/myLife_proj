package com.taerin.myLife.main;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.taerin.myLife.MyLifeApplication;
import com.taerin.myLife.main.entity.Menu;
import com.taerin.myLife.main.repository.MenuRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
@ContextConfiguration(classes = {MyLifeApplication.class})
@Transactional
@Rollback(false)
public class mainTest {

	@Autowired
    private MenuRepository menuRepository;
	
	@Test
	public void menuTest() {
		List<Menu> menu = menuRepository.findAll();	
		for (Menu m : menu) {
			System.out.println(m.getMenuNm());
		}
	}
}
