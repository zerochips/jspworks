package beans;

public class CalcBean {
	// 세제곱 계산하는 메서드 - 웹에서 호출해서 사용해야죠
	public int calculate(int x) {
		return x * x * x;	// 세제곱
	}
}
