n=10;
tosses=round(rand(1,n));
// 1 means heads and 0 means tails
heads=sum(tosses==1);
tails=sum(tosses==0);
p_heads=heads/n;
p_tails=tails/n;
//disp(tosses);
//disp("Number of Heads", heads);
//disp("Experimantal probability of Heads", p_heads);
//disp("Number of Tails", tails);
//disp("Experimantal probability of Tails", p_tails);


counts = [heads, tails];
//bar(counts);
//xtitle("Coin Toss Simulation", "Outcome", "Frequency");


experimental = [p_heads, p_tails];
theoretical = [0.5, 0.5];
comparison = [experimental; theoretical]';
//bar(comparison);
//legend(["Experimental"; "Theoretical"]);


cumulative_heads = cumsum(tosses);
number_of_tosses = 1:n;
cumulative_probability = cumulative_heads ./ number_of_tosses;
plot(number_of_tosses, cumulative_probability);
plot([1 n], [0.5 0.5], "r--");
xtitle("Cumulative Probability of Heads", ..
       "Number of Tosses", "Proportion of Heads");
xgrid();
