package com.taerin.myLife.main.entity;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "TB_MENU")
public class Menu {

	@Id
    @Column(name = "MENU_ID", nullable = false)
    private Long menuId;
	
	@Column(name = "MENU_NM", nullable = false, length = 200)
	private String menuNm;
	
	@Column(name = "MENU_LVL", nullable = false)
	private Long menuLvl;
	
	@Column(name = "MENU_ORD", nullable = false)
	private Long menuOrd;
	
	@Column(name = "MENU_PID", nullable = false)
	private Long menuPid;
	
	@Column(name = "MENU_URL", nullable = false)
	private String menuUrl;
	
	@Column(name = "USE_YN", nullable = false)
	private boolean useYn;
}
