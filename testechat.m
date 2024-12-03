% Sample data
data = [1.0, 2.0; 1.5, 1.8; 5.0, 8.0; 8.0, 8.0; 1.0, 0.6; 9.0, 11.0];

% Number of clusters
k = 3;

% Perform k-means clustering
[idx, C] = kmeans(data, k);

% idx contains the cluster indices for each data point
% C contains the cluster centroids

% Display results
disp('Cluster indices:');
disp(idx);
disp('Cluster centroids:');
disp(C);

% Optional: Visualize the clusters
figure;
gscatter(data(:,1), data(:,2), idx);
hold on;
plot(C(:,1), C(:,2), 'kx', 'MarkerSize', 15, 'LineWidth', 3); % centroids
title('K-means Clustering');
xlabel('Feature 1');
ylabel('Feature 2');
hold off;
