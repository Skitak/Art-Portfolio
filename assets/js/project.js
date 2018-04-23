import Huebee from "huebee";
import {ajaxForm, ajaxDelete} from './ajaxUtils';

export default function projectForm() {    //Usage of huebee
    HueBeePlugin()
    ProjectDynamicEditing()
    ajaxForm("project_form")
    ajaxForm("artwork_form", function (data) {
        // let array = JSON.parse(data[0])
        $.each(data, function(){
            let artwork = JSON.parse(this)[0]
            addArtwork(artwork)
        })
        
    })

    ajaxDelete($(".artwork .delete"), 2, false)
    ajaxFront($(".gallery .button-primary"))
    
}   

function HueBeePlugin (){
    let formProjectColor = $("#project_form_color")
    if ($(".color-input")[0] != null){
        let huebee = new Huebee( '.color-input', {
            notation: 'hex',
            hues: 20,
            saturations: 3,
            shades: 10,
            setBGColor: '.project'
        })
    }
}

function ProjectDynamicEditing(){
    let formTitle = $("#project_form_name")
    let formDescription = $("#project_form_description")

    formTitle.keyup(function(){
        $(".project h1").text($(this).val())  
    })

    formDescription.keyup(function(){
        $(".project p").text($(this).val())  
    })
}

function addArtwork(artwork){
    let divArt = $('<div></div>').addClass("artwork")
    divArt.append($('<img />').attr("src", "/images/artwork/" + artwork.thumbnail))
    let divButton = $('<div></div>').addClass("buttons")
    divButton.append($('<a>Avant</a>').addClass("button button-primary front").attr('href', "/admin/project/frontArtwork/" + artwork.id))
    divButton.append($('<a>Supprimer</a>').addClass("button button-warning delete").attr('href', "/admin/delete/artwork/"+ artwork.id))
    divArt.append(divButton)
    $('.gallery').prepend(divArt)
    ajaxDelete(divArt.find(".delete"), 2, false)
    ajaxFront(divArt.find(".button-primary"))
}

function ajaxFront(div){
    div.on("click", function (){
        event.preventDefault()
        let urlFront = $(this).prop('href')
        $.ajax({
            url: urlFront,
            success: function (data){
                $(".project img").attr("src", "/images/artwork/" + data[0])
                $(".project .background-blur").attr("src", "/images/artwork/" + data[1])
                $(window).scrollTop(0);
            },
            error: function (data,fsd,error){
                alert (error)
            }
        })
    })
}