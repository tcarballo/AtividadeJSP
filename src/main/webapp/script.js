var user = JSON.parse(window.sessionStorage.getItem("userLogin"))
var l = []

function verifyUser() {
    if (user != 0 && user != null) {
        document.getElementById("login").setAttribute("style", "display: none;")
        document.getElementById("logout").setAttribute("style", "float:right; display: block;")
        document.getElementById("coment").removeAttribute("readonly")
        document.getElementById("coment").setAttribute("placeholder","Digite seu comentário")
        document.getElementById("postar").removeAttribute("disabled")

        if(user[0].idPerfil == 1){
            const coment  = document.getElementsByClassName("Ncoment")

            for(let i = 0; i < coment.length; i++){
                coment[i].removeAttribute("hidden")
            }


        }
    }
}


function saveLink(link) {


    if (JSON.parse(window.sessionStorage.getItem("Links")) != null)
        l = JSON.parse(window.sessionStorage.getItem("Links"))

    l.push(link)
    window.sessionStorage.setItem("Links", JSON.stringify(l))

}

function showMsg() {
    l = JSON.parse(window.sessionStorage.getItem("Links"))

    window.sessionStorage.removeItem("Links")

    document.getElementById("autent").setAttribute("style", "display: block;")
    setTimeout(() =>window.location.href = l[l.length-2], 2000)
}

function saveUser(IdUser, nomeUser, idPerfil) {
    let user = [
        {
            "idUser": IdUser,
            "nomeUser": nomeUser,
            "idPerfil": idPerfil
        }
    ]
    window.sessionStorage.setItem("userLogin", JSON.stringify(user))

}

function logout() {

    window.sessionStorage.setItem("userLogin", "0")
    window.location.reload()


}