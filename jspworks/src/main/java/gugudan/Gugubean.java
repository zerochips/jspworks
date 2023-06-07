package gugudan;

public class Gugubean {
	//구구단 계산 각 값을 배열로 처리하는 메서드
	public int[] times(int dan) {
		int[] gugu = new int[19];	// 19개를 저장할 정수형 배열 선언 했습니다.
		
		for(int i=1; i < gugu.length + 1; i++) {	// 1부터 시작하니까 gugu.length +1 을 해줌
			gugu[i-1] = dan * i;	// dan=2인 경우 gugu[0] = 2*1
		}		
		return gugu;	// 배열로 반환(돌려줌)
	}
	
	
}
