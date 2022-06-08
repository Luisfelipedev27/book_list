// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
//= require jquery3
//= require jquery_ujs
//= require_tree 

/////// meu codigo // esse não funcionou :(    
function getbooks(){
    document.getElementById('output').innerHTML="";
    fetch("http://openlibrary.org/search.json?q="+document.getElementById("input").value).then(a => a.json()).then(response =>{
        for(var i=0;i<response.docs.lenght;i++){document.getElementById("output").innerHTML+="<h2>"+response.docs[i].title+"</h2>"+response.docs[i].author_name[0];
    }
});
}

//NO js puro utilizei esse código pra chamar a API e funcionou, mas quando apliquei no rails, não funcionou.