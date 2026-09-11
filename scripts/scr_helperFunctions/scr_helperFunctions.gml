function approach(currentValue, targetValue, stepAmount){
	if (abs(abs(currentValue) - abs(targetValue)) < stepAmount){
		return targetValue;		
	}
	if (currentValue < targetValue){
	stepAmount = -stepAmount;	
	}
	return currentValue - stepAmount;
}