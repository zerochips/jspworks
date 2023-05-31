package beans;

// 계산기 자료형(VO + DAO)
public class Calculator {
	// 필드 - DAO와 같이있기 때문에 0으로 초기화해줌
	private int num1;	// 첫번째 수 - input name 이름과 동일하게 설정
	private int num2;	// 두번째 수	
	private String op;	//연산자	
	private int result;
	
	// 계산하는 메서드
	public int calculate() {
		if(op.equals("+")) {
			result = num1 + num2;
		}else if(op.equals("-")) {
			result = num1 - num2;
		}else if(op.equals("x")) {
			result = num1 * num2;
		}else if(op.equals("/")) {
			result = num1 / num2;
		}else {
			System.out.println("지원되지 않는 기능입니다.");
		}
		return result;
	}
	

	// getter, setter
	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}
	
	
	
	
}
