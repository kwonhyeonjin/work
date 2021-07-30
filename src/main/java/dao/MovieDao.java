package dao;

import java.util.ArrayList;

import dto.MovieDto;
import dto.Product;

public class MovieDao {
	private ArrayList<MovieDto> dto = new ArrayList<MovieDto>();
	private static MovieDao instance = new MovieDao();
	
	public static MovieDao getInstance() {
		return instance;
	}
	
	public MovieDao() {
		MovieDto m = new MovieDto();
		
		m.setMname("괴기맨숀");
		
		m.setMdate("8월 1일");
		m.setMdate("8월 2일");
		m.setMdate("8월 3일");
		m.setMdate("8월 4일");
		m.setMdate("8월 5일");
		m.setMdate("8월 6일");
		m.setMdate("8월 7일");
		m.setMdate("8월 8일");
		m.setMdate("8월 9일");
		m.setMdate("8월 10일");
		
		m.setMtime("17시20분 , 1관");
		m.setMtime("18시20분 , 2관");
		m.setMtime("19시30분 , 3관");
		m.setMtime("19시50분 , 4관");
		m.setMtime("20시20분 , 5관");
		m.setMtime("21시10분 , 6관");
		m.setMtime("23시40분 , 7관");
		
		m.setA("A1");
		m.setA("A2");
		m.setA("A3");
		m.setA("A4");
		m.setA("A5");
		m.setA("A6");
		m.setA("A7");
		m.setA("A8");
		m.setA("A9");
		m.setA("A10");
		m.setA("A11");
		
		
		dto.add(m);
		
	}
	public ArrayList<MovieDto>getAllMovieDtos(ArrayList<MovieDto> m){
		return m;
	}
	
	public MovieDto getMovieDtoById(String mname) {
		MovieDto MovieDtoById = null;

		for (int i = 0; i < dto.size(); i++) {
			MovieDto movie = dto.get(i);
			if (movie != null && MovieDto.getMovieDtoId() != null && MovieDto.getMovieDtoId().equals(movie)) {
				MovieDtoById = movie;
				break;
			}
		}
		return MovieDtoById;
	}
	
	public void addProduct(MovieDto Movie) {
		dto.add(Movie);
	}
}
