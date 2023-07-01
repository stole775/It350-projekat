function PokaziTekst1() {
  document.getElementById("txt1").innerHTML = "Kod nas imate mogućnost nabavke,ugradnje i mapiranja N2O sistema. Naši sistemi posjeduju više mapa koje se prebacuju automatski pritiskom/puštanjem dugmeta koje aktivira nitro sistem a pri tome nemorate mjenjati Vaš tvornički ECU. Kako M nitro sistem duplih mapa izgleda u praksi, možete vidjeti u našoj youtube galeriji.";
  document.getElementById("txt2").innerHTML ="Majica kratki rukav sa kragnom. Vez je i naprijed i nazad. Rupičavi pamuk 100 %";

}
function VratiInfo1() {
  document.getElementById("txt1").innerHTML = "Predji misem za informaciju";
  document.getElementById("txt2").innerHTML = "Predji misem preko slike za informaciju";
}
function PromeniIme1() {

  document.getElementById("PromeniIme1").innerHTML = "Vlasnik";
  document.getElementById("PromeniIme2").innerHTML = "Menadzer";
  document.getElementById("PromeniIme3").innerHTML = "Mehanicar";

}

function FunkcijaKontakt() {

  var kime = document.getElementById("kime").value;
  var kprezime = document.getElementById("kprezime").value;
  var kbroj = document.getElementById("kbroj").value;
  var ktxt = document.getElementById("textareamoja").value;
 

  var br = /^[+]?[0-9]+$/;
  var tekst = /^[A-za-z]+$/;
  console.log(kime.value);

  if (kime.match(tekst)) {
    if (kprezime.match(tekst)) {
      if (kbroj.match(br)) {
        if(ktxt!="" && ktxt!="Unesi tekst...:"){
        alert("Uspresno poslata poruka");}
        else { alert("Neispravn unos"); }
      } else { alert("Neispravn unos"); }
    } else { alert("Neispravn unos"); }
  } else { alert("Neispravn unos"); }


}
function FunkcijaKarijere() {
  var ime = document.getElementById("ime").value;
  var prezime = document.getElementById("prezime").value;
  var f=tipKarijere();

  var tekst = /^[A-za-z]+$/;

  

  

  if (ime.match(tekst)) {

    if (prezime.match(tekst)) {
      if(f){
      document.getElementById("karijereDopunaSubmit").innerHTML="Hvala Vam na poverenju ovo moze biti pocetak jedne velike saradje.";
      alert("Uspresno poslata poruka");
      document.getElementById("gif").src="Slike/R34_GTR.gif";
      }
      else { alert("Neispravn unos"); }
    } else { alert("Neispravn unos"); }
  } else { alert("Neispravn unos"); }


}

function hpcalc() {
  var trenHp = document.getElementById("snaga").value;
  var hp = 0;

  if (document.getElementById('mod2').checked) {
    hp += 5;
  }
  if (document.getElementById('mod3').checked) {
    hp += 9;
  }
  if (document.getElementById('mod4').checked) {
    hp += 4;
  }
  if (document.getElementById('mod5').checked) {
    hp += 35;
  }
  if (document.getElementById('mod6').checked) {
    hp += 3;
  }
  if (document.getElementById('mod7').checked) {
    hp += 3;
  }
  if (document.getElementById('mod8').checked) {
    hp += 14;
  }
  if (document.getElementById('mod9').checked) {
    hp += 2;
  }
  if (document.getElementById('mod10').checked) {
    hp += 8;
  }
  if (document.getElementById('mod11').checked) {
    hp += 20;
  }
  if (document.getElementById('mod12').checked) {
    hp += 1;
  }

  document.getElementById("prikazihp").value = hp + parseInt(trenHp);


}

function tipKarijere() {
  var fajl = document.getElementById('file');
  var putanja = fajl.value;
  var x = /(\.doc|\.docx|\.pdf|\.tex|\.txt)$/i;   
      if (!x.exec(putanja)) {
          fajl.value = '';
          return false;
      } else {
          return true;
      }
}

