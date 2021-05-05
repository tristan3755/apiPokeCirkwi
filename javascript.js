let xhttp = new XMLHttpRequest();

function maRequete() {
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      let infoPoke = JSON.parse(this.response);
      draco(infoPoke)
      /*console.log(infoPoke);*/
    }
  };
  xhttp.open(
    "GET",
    "http://localhost/apiCirkwi/api.php",
    true
  );

  xhttp.send();
}
maRequete()

function draco(infoDraco) {
  console.log(infoDraco)

  for (let i in infoDraco.Pokemon) {
    let blocHeader = document.createElement('article')
    blocHeader.style.backgroundColor = "#bdc3c7"
    let divNom = document.createElement('div')
    divNom.classList = "nomPoke"
    let fleche = document.createElement('i')
    fleche.classList = "fas fa-caret-right"
    let nomPoke = document.createElement('h1')
    nomPoke.style.color = '#2c3e50'
    let maDescription = document.createElement('p')

    let divContenu = document.createElement('div')
    divContenu.style.display = "none"
    console.log(divContenu)
    divContenu.classList = "description"
    let image = document.createElement('img')

    nomPoke.innerHTML = infoDraco.Pokemon[i].nom
    divNom.appendChild(fleche)
    divNom.appendChild(nomPoke)
    blocHeader.appendChild(divNom)


    if (infoDraco.Pokemon[i].nom === 'Dracaufeu') {
      image.src = "./dracaufeu.png"
    } else if (infoDraco.Pokemon[i].nom === 'Pikachu') {
      image.src = "./pika.png"
    } else if (infoDraco.Pokemon[i].nom === 'Bulbizarre') {
      image.src = "./Bulbizarre.png"
    } else if (infoDraco.Pokemon[i].nom === 'Evoli') {
      image.src = "./Evoli.png"
    }
    image.classList = 'imgPoke'

    maDescription.innerHTML = infoDraco.Pokemon[i].description

    fleche.addEventListener('click', () => {
      /*console.log('ca click')*/

      if (divContenu.style.display === 'none') {
        divContenu.style.display = 'flex'
        fleche.style.transform = 'rotate(90deg)'
        fleche.style.transition = 'ease-in-out 0.5s'
        blocHeader.style.backgroundColor = "#2980b9"
        nomPoke.style.color = 'white'
        console.log(divContenu)
      } else {
        divContenu.style.display = 'none'
        fleche.style.transform = 'rotate(0deg)'
        fleche.style.transition = 'ease-in-out 0.5s'
        blocHeader.style.backgroundColor = "#bdc3c7"
        nomPoke.style.color = '#2c3e50'
        console.log(divContenu)
      }
    })
    divContenu.appendChild(image)
    divContenu.appendChild(maDescription)
    document.getElementById('sect1').appendChild(blocHeader)
    document.getElementById('sect1').appendChild(divContenu)
  }
}