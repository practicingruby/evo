require "sinatra"

get "/" do
  erb :index
end

post "/" do
  erb :selections
end

__END__

@@index
<form method="post">

<h2>Player 1:</h2>
<input type="radio" id="p1_c1" name="player1_action" value="0"/>
<label for="p1_c1" class="player1">Foo</label><br/>
<input type="radio" id="p1_c2" name="player1_action" value="1"/>
<label for="p1_c2" class="player1">Bar</label><br/>
<input type="radio" id="p1_c3" name="player1_action" value="2"/>
<label for="p1_c3" class="player1">Baz</label><br/>

<h2>Player 2:</h2>
<input type="radio" id="p2_c1" name="player2_action" value="0"/>
<label for="p2_c1" class="player2">Apple</label><br/>
<input type="radio" id="p2_c2" name="player2_action" value="1"/>
<label for="p2_c2" class="player2">Snake</label><br/>
<input type="radio" id="p2_c3" name="player2_action" value="2"/>
<label for="p2_c3" class="player2">Banana</label><br/>

<input type="submit" value="Kill"/>
</form>

@@selections
<p><%= params[:player1_action] %>, <%= params[:player2_action] %></p>
