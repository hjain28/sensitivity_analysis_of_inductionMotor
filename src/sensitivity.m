function sense = sensitivity(x,y)
sense=abs((diff(x,y))*(y/x));
end 