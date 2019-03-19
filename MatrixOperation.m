clear;
clc;

matrixOperation();
function matrixOperation
    prompt1 = 'Number of rows of A:';
    m = input(prompt1);
    prompt2 = 'Number of columns of A:';
    n = input(prompt2);
    prompt3 = 'Number of rows of B:';
    o = input(prompt3);
    prompt4 = 'Number of columns of B:';
    p = input(prompt4);

    Message1 = 'Matrices are not able to add!';
    Message2 = 'Matrices are not able to multiply!';
    if m~=o
        Message1
        return
    end
    if n~=p
        Message1
        return
    end

    if m~=p
        Message2
        return
    end
    if n~=o
        Message2
        return
    end

    for i = 1:m
        for j = 1:n;
            A(i, j) = input(sprintf('Please Enter A(%d, %d)>>', i, j))
        end
    end

    for i = 1:o
        for j = 1:p;
            B(i, j) = input(sprintf('Please Enter B(%d, %d)>>', i, j))
        end
    end
    for i = 1:m
        for j = 1:n
            C(i, j) = A(i, j) + B(i, j);
        end
    end
    C
    for i = 1:m
        for j = 1:n
            D(i, j) = 0;
            for k = 1:o
                D(i, j) = D(i, j) + A(i, k) * B(k, j);
            end
        end
    end
    D
end

