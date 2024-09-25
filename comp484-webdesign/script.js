function add(){
    const num1= parseFloat(document.getElementById("num1").value);
    const num2= parseFloat(document.getElementById("num2").value);
    if(isNaN(num1)||isNaN(num2)){
        document.getElementById("result").textContent="Please enter a valid number.";
    } else {
        const total=num1+num2;
        document.getElementById("result").textContent=total;
    }
}
function sub(){
    const num1= parseFloat(document.getElementById("num1").value);
    const num2= parseFloat(document.getElementById("num2").value);
    if(isNaN(num1)||isNaN(num2)){
        document.getElementById("result").textContent="Please enter a valid number.";
    } else {
        const total=num1-num2;
        document.getElementById("result").textContent=total;
    }
}

function mult(){
    const num1= parseFloat(document.getElementById("num1").value);
    const num2= parseFloat(document.getElementById("num2").value);
    if(isNaN(num1)||isNaN(num2)){
        document.getElementById("result").textContent="Please enter a valid number.";
    } else {
        const total=num1*num2;
        document.getElementById("result").textContent=total;
    }
}

function div(){
    const num1= parseFloat(document.getElementById("num1").value);
    const num2= parseFloat(document.getElementById("num2").value);
    if(isNaN(num1)||isNaN(num2)){
        document.getElementById("result").textContent="Please enter a valid number.";
    } else {
        const total=num1/num2;
        document.getElementById("result").textContent=total;
    }
}

let count=0;
function clickInc(){
  count++;
  document.getElementById("result").textContent=count;
}