package kr.kh.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.kh.movie.model.vo.MovieVO;

public interface MovieDAO {

	List<MovieVO> getMovieList();

	MovieVO selectMovie(@Param("mo_num")int mo_num);

	void updateMovie(MovieVO movie);

	void insertMovie(@Param("mo")MovieVO movie);



}
