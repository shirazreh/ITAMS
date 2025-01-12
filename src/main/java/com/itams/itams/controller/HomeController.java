package com.itams.itams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/")
	public String showTodos() {
		return "index";
	}
	@GetMapping("/add")
	public String addAsset() {
		return "add_asset";
	}
	@GetMapping("/update")
	public String updateAsset() {
		return "update_asset";
	}
	@GetMapping("/view")
	public String viewAssets() {
		return "view_assets";
	}
	@GetMapping("/main")
	public String maintenanceLogs() {
		return "maintenance_logs";
	}
	@GetMapping("/use")
	public String usageLogs() {
		return "usage_logs";
	}
}