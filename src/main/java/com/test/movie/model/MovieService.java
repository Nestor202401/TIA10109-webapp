package com.test.movie.model;

import java.sql.Date;
import java.util.List;

public class MovieService {

	private MovieDAO_interface dao;

	public MovieService() {
		dao = new MovieJDBCDAO();
	}

	public MovieVO addMovie(String movieName, Integer movieRating, String director,
			String actor, Date releaseDate, Date endDate,Integer runtime,String introduction) {

		MovieVO movieVO = new MovieVO();

		movieVO.setMovieName(movieName);
		movieVO.setMovieRating(movieRating);
		movieVO.setDirector(director);
		movieVO.setActor(actor);
		movieVO.setReleaseDate(releaseDate);
		movieVO.setEndDate(endDate);
		movieVO.setRuntime(runtime);
		movieVO.setIntroduction(introduction);
		dao.insert(movieVO);

		return movieVO;
	}

	public MovieVO updateMovie(Integer movieId, String movieName, Integer movieRating, String director,
			String actor, Date releaseDate, Date endDate,Integer runtime,String introduction) {

		MovieVO movieVO = new MovieVO();
		movieVO.setMovieId(movieId);
		movieVO.setMovieName(movieName);
		movieVO.setMovieRating(movieRating);
		movieVO.setDirector(director);
		movieVO.setActor(actor);
		movieVO.setReleaseDate(releaseDate);
		movieVO.setEndDate(endDate);
		movieVO.setRuntime(runtime);
		movieVO.setIntroduction(introduction);
		dao.update(movieVO);

		return movieVO;
	}

	public void deleteMovie(Integer movieId) {
		dao.delete(movieId);
	}

	public MovieVO getOneMovie(Integer movieId) {
		return dao.findByPrimaryKey(movieId);
	}

	public List<MovieVO> getAll() {
		return dao.getAll();
	}
}
