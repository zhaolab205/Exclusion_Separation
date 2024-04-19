function resultVector = generateVector(inputNumber)
    if inputNumber < 1 || inputNumber > 60
        error('输入数字必须在1到60之间。');
    end
    
    resultVector1 = zeros(1, 21); resultVector2 = zeros(1, 21); resultVector3 = zeros(1, 21); 
    if inputNumber >= 1 && inputNumber <= 20
        resultVector1(inputNumber) = 1;resultVector2 = zeros(1, 21); resultVector3 = zeros(1, 21); 
    elseif inputNumber >= 21 && inputNumber <= 40
        resultVector2(inputNumber-20) = 1;resultVector1 = zeros(1, 21); resultVector3 = zeros(1, 21); 
    elseif inputNumber >= 41 && inputNumber <= 60
        resultVector3(inputNumber-40) = 1;resultVector1 = zeros(1, 21); resultVector2 = zeros(1, 21); 
    end
    resultVector = [resultVector1 zeros(1, 24) resultVector2 zeros(1, 24) resultVector3 zeros(1, 24)];
end
