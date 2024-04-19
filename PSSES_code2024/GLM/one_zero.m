function idx = one_zero(label_idx) 
    num =0; 
    local_111 = find(label_idx == 1);
    idx = zeros(5,length(find(label_idx == 1)));
    for i = 1:local_111(end)
        binarySegment = zeros(1, length(find(label_idx == 1)));
        if label_idx(i) == 1
            num = num+1;
            binarySegment(num) = 1;
            idx(i,:) = binarySegment;
        end
    end
end
