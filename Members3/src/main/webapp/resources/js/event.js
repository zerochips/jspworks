/**
 * 이벤트 추첨
 */
 function play(){
    let name = ['노승우', '박성호', '김은효', '성의석', '이유진', '강정현', '김민정', '유세현', '오화룡'];
    let numbers = new Array(5); //랜덤 번호 5개 저장할 배열

    for(let i = 0; i < numbers.length; i++){
        let number = Math.floor(Math.random() * name.length); //랜덤 번호
        numbers[i] = number;      

        // 중복 제거
        for(let j = 0; j < i; j++){
            if(numbers[j] == numbers[i]){
                i--;  //중복된 인덱스 삭제함
            }
        }
    }

    let winners = new Array(5);  //당첨자 이름 저장할 배열
    for(let i=0; i<winners.length; i++){
        winners[i] = name[numbers[i]];    
    }
    document.getElementById("display").innerHTML =  winners;   
}