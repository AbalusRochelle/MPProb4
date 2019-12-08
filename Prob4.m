
height=input('What is the initial height of the projectile above the ground in meters? ');
velocity=input('What is the magnitude of the velocity in m/s? ');
theta=input('What is the angle in degrees with respect to the +axis at which the projectile is fired? ');
accelerationx=input('What is the the x-component of the acceleration? ');
accelerationy=input('What is the the y-component of the acceleration? ');

 if accelerationy==0
      error('If the vertical acceleration is zero, then there would be no free fall.)')
 end
 
 time=(-velocity*sind(theta)-sqrt(velocity^2*(sind(theta)^2)-2*height*accelerationy))/accelerationy;
 t=0:.001:time;
x=velocity.*cosd(theta).*t + (0.5).*accelerationx.*(t.^2);
y=velocity.*sind(theta).*t + (0.5).*accelerationy.*(t.^2)+ height;

plot(x,y,'linewidth',2)
grid on
xlabel 'Range'; ylabel 'Height '; title 'Projectile Motion'
