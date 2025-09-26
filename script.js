document.querySelector('.busca').addEventListener('submit', (event)=>{
    event.preventDefault()

    let input = document.querySelector('#searchInput').value

    if(input !== ""){
        showMarning("Carregando...")
    }else{

    }

})

function showMarning(msg){
    document.querySelector('.aviso').innerHTML = msg
}