package com.taerin.myLife.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.taerin.myLife.main.entity.Menu;

@Repository
public interface MenuRepository extends JpaRepository<Menu, Long> {

}
