package kr.kh.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kh.movie.dao.MovieDAO;
import kr.kh.movie.model.vo.MovieVO;

@Service
public class MovieService {

	@Autowired
	MovieDAO movieDao;

	public List<MovieVO> getMovieList() {
		
		return movieDao.getMovieList();
	}

	public MovieVO selectMovie(int mo_num) {
		
		return movieDao.selectMovie(mo_num);
	}

	

	public void updateMovie(MovieVO movie) {
		movieDao.updateMovie(movie);
		
	}


	public void insertMovie(MovieVO movie) {
		movieDao.insertMovie(movie);
		
	}



}
