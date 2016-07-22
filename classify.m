function [ out ] = classify( I )

[x,y] = size(I);

Resultado = 10*ones(x,y);

for i = 1:x
    for j = 1:y
        C = I{i,j};
   
        [B,L] = bwboundaries(C,'noholes');

        stats = regionprops(L,'Area','Centroid');

        % loop over the boundaries
        for k = 1:length(B)

          % obtain (X,Y) boundary coordinates corresponding to label 'k'
          boundary = B{k};

          % compute a simple estimate of the object's perimeter
          delta_sq = diff(boundary).^2;
          perimeter = sum(sqrt(sum(delta_sq,2)));

          % obtain the area calculation corresponding to label 'k'
          area = stats(k).Area;

          % compute the roundness metric
          metric = 4*pi*area/perimeter^2;
          
          if metric >= 0.6
              Resultado(i,j) = 0;
          else
              Resultado(i,j) = 1;
          end

        end
    end
    
end

out = Resultado;
end

