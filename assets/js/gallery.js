var galleryColumns = 1;
var galleryColumnsToSize = { 1:750, 2:1100, 3:1450, 4:10000}
var galleryMaxColumns = 4

export default function gallery () {
    organizeAllGalleries()
    $(window).resize(organizeAllGalleries)
}

function organizeAllGalleries(){
    let columnAsked = determineColumnsNeeded()
    $('.gallery').each(function (index, element) {
        if (columnAsked != galleryColumns)
            organizeGalleryImages($(element), columnAsked)
    })
    galleryColumns = columnAsked
}

function organizeGalleryImages(gallery, columnAsked){
    placeImagesInContainer(gallery)
    setColumnVisibilities(gallery, columnAsked)
    fillCollumns(gallery, columnAsked)
}

function determineColumnsNeeded(){
    let width = $(window).width()
    for (let i = 1; i < 5; i++)
        if (width < galleryColumnsToSize[i])
            return i;
} 

function placeImagesInContainer(gallery){
    let container = gallery.find(".invisible-container")[0];
    gallery.find('.gallery-column a')
        .each(function(index, element){
            container.append(element)
        });
}

function setColumnVisibilities(gallery,columnAsked){
    for (let i = 0; i < galleryMaxColumns; i++){
        let display = (i < columnAsked) ? "flex" : "none"
        $(gallery.find('.gallery-column')[i]).css("display", display)
    }
}

function fillCollumns(gallery, columnAsked){
    let actualColumn = 0
    let columns = $(gallery.find('.gallery-column'))
    gallery.find('.invisible-container a')
        .each(function(index, element){
            $(columns[actualColumn]).append(element)
            if( columnAsked > 0)
                actualColumn = findSmallestCollumn(gallery, columnAsked)
        });
}

function findSmallestCollumn(gallery, columnAsked){
    let smallest = 0
    let columns = gallery.find('.gallery-column')
    for (let i = 1; i < columnAsked; i++){
        if ($(columns[i]).height() < $(columns[smallest]).height())
            smallest = i;
    }
    
    return smallest
}