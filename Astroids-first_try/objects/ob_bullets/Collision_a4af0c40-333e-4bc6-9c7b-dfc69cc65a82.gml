score += 10;// score = score + 10
audio_play_sound(snd_die, 1, false);

instance_destroy();

with(other){
	instance_destroy();
	
	if (sprite_index == big_asteroid){
	repeat(2){
	  var new_asteroid = instance_create_layer(x,y,"Instances",ob_astroid);
	  new_asteroid.sprite_index = medium_asteroid;
	  }
	}
	  else if (sprite_index == medium_asteroid){
		  repeat(2){
		  var new_asteroid = instance_create_layer(x,y, "Instances",ob_astroid);
		  new_asteroid.sprite_index = small_asteroid;
		  }
	  }
		repeat(10){
		instance_create_layer(x,y,"Instances",ob_debris);
		 }
	  
}
