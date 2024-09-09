package kr.kh.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.kh.movie.model.vo.MovieVO;
import kr.kh.movie.service.MovieService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@Autowired
	MovieService movieService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<MovieVO> list = movieService.getMovieList();
		model.addAttribute("list", list);
		return "/main/home";
	}
	@GetMapping("/main/home")
	public String movieHome(Model model) {
		List<MovieVO> list = movieService.getMovieList();
		model.addAttribute("list", list);
		return "/main/home";
	}
	
	  @GetMapping("/main/moviedetail") 
	  public String movieDetail(Model model, int mo_num) {
	  MovieVO movie = movieService.selectMovie(mo_num);
	  model.addAttribute("movie", movie); 
	  return "/main/moviedetail"; 
	}
	 
}
