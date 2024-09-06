package kr.kh.movie.pagination;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class PostCriteria extends Criteria {
	
	int co_num;
	
	@Override
	public String toString() {
		return "co_num : " + co_num + super.toString();
	}
	
	
}
