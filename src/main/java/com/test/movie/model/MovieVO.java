package com.test.movie.model;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "movie")
public class MovieVO implements java.io.Serializable{
	
	@Id
	@Column(name = "movie_id", updatable = false)
	private Integer movieId ;
	
	@Column(name = "movie_name")
	private String movieName ;
	
	@Column(name = "movie_rating")
    private Integer movieRating ;
	
	@Column(name = "director")
    private String director ;
	
	@Column(name = "actor")
    private String actor ;
	
	@Column(name = "release_date")
    private Date releaseDate ;
	
	@Column(name = "end_date")
    private Date endDate ;
	
	@Column(name = "runtime")
    private Integer runtime ;
	
	@Column(name = "introduction", columnDefinition = "text")
    private String introduction ;
    
    
	public Integer getMovieId() {
		return movieId;
	}
	public void setMovieId(Integer movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Integer getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(Integer movieRating) {
		this.movieRating = movieRating;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Integer getRuntime() {
		return runtime;
	}
	public void setRuntime(Integer runtime) {
		this.runtime = runtime;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public MovieVO() {
		super();
	}
	public MovieVO(Integer movieId, String movieName, Integer movieRating, String director, String actor,
			Date releaseDate, Date endDate, Integer runtime, String introduction) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.movieRating = movieRating;
		this.director = director;
		this.actor = actor;
		this.releaseDate = releaseDate;
		this.endDate = endDate;
		this.runtime = runtime;
		this.introduction = introduction;
	}
    
	
	
	
	
	
}
