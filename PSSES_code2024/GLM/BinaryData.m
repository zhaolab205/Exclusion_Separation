function [newBinaryData,sub_local] = BinaryData(data)
    newBinaryData = [];
    startIdx = 1;
    local_111 = find(data == 1);
    num = 0;
    sub_local = [];
    if length(local_111) == 1 || length(local_111) == 0
        segment = data(1:end);
        binarySegment = zeros(1, 5);
        binarySegment(segment) = 1;
        newBinaryData = [newBinaryData, binarySegment];
        sub_local = [sub_local, num*ones(1,sum(binarySegment == 1))];
    else    
        for i = 2:numel(data)
            if data(i) == 1 
                num = num+1;
                segment = data(startIdx:i-1);
                binarySegment = zeros(1, 5);
                binarySegment(segment) = 1;
                newBinaryData = [newBinaryData, binarySegment];
                sub_local = [sub_local, num*ones(1,sum(binarySegment == 1))];
                startIdx = i;
                if startIdx == local_111(end)
                    num = num+1;
                    segment = data(startIdx:end);
                    binarySegment = zeros(1, 5);
                    binarySegment(segment) = 1;
                    newBinaryData = [newBinaryData, binarySegment];
                    sub_local = [sub_local, num*ones(1,sum(binarySegment == 1))];
                end
            end
        end 
    end
end





