package kr.kh.movie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	    public String movieDetail(Model model, @RequestParam("mo_num") int mo_num) {
	        MovieVO movie = movieService.selectMovie(mo_num);
	        model.addAttribute("movie", movie);
	        return "/main/moviedetail";
	    }
	    
 	@ResponseBody
    @PostMapping("/main/moviedetail/update")
    public Map<String, Object> updateMovieDetail(@RequestBody MovieVO movie) {
    	Map<String, Object> map = new HashMap<String, Object>();
        try {
            movieService.updateMovie(movie);
            map.put("mo", movie);
        	
        } catch (Exception e) {
            log.error("Failed to update movie", e);
        }
		return map;
    }
 	
 	@GetMapping("/main/movieregistration")
	public String movieRegistration(Model model) {
		return "/main/movieregistration";
	}
 	
 	@PostMapping("/main/movieregistration")
    public String movieRegistrationInsert(Model model,
                                          @RequestBody MovieVO movie) {
        
        // MovieVO 객체 생성 및 데이터 설정
        MovieVO movie =  movieService.insertMovie(movie);

        // 홈 페이지로 리다이렉트
        return "redirect:/main/home";
    }
	    
}

