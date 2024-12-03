Iris = load('iris.txt');

Y = Iris(:, 1) + 1;

X = Iris(:, 4:5);

Yp = kmeans(X, 3);

CF = confusionmat(Y, Yp);

C1= [0 0; 0 0; 0 0];
Yp1 = kmeans(X, 3, 'Start', C1, 'EmptyAction', 'drop');
CF1 = confusionmat(Y, Yp1);

C2= [0 0; 2.5 5; 5 10];
Yp2 = kmeans(X, 3, 'Start', C2, 'EmptyAction', 'drop');
CF2 = confusionmat(Y, Yp1);

C3= [0 0; 2.5 1.5; 5 2.5];
Yp3 = kmeans(X, 3, 'Start', C3, 'EmptyAction', 'drop');
CF3 = confusionmat(Y, Yp1);

subplot(3, 1, 1);
plot(X(Yp1==1, 1), X(Yp1==1, 2), 'r+', "MarkerSize", 5);
hold on;
plot(X(Yp1==2, 1), X(Yp1==2, 2), 'g+', "MarkerSize", 5);
plot(X(Yp1==3, 1), X(Yp1==3, 2), 'b+', "MarkerSize", 5);
hold off;

subplot(3, 1, 2);
plot(X(Yp2==1, 1), X(Yp2==1, 2), 'r+', "MarkerSize", 5);
hold on;
plot(X(Yp2==2, 1), X(Yp2==2, 2), 'g+', "MarkerSize", 5);
plot(X(Yp2==3, 1), X(Yp2==3, 2), 'b+', "MarkerSize", 5);
hold off;

subplot(3, 1, 3);
plot(X(Yp3==1, 1), X(Yp3==1, 2), 'r+', "MarkerSize", 5);
hold on;
plot(X(Yp3==2, 1), X(Yp3==2, 2), 'g+', "MarkerSize", 5);
plot(X(Yp3==3, 1), X(Yp3 ...
    ==3, 2), 'b+', "MarkerSize", 5);
hold off;