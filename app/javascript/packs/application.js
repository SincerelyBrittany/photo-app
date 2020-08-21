// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")


// (function() {
//     $( ".add-photo" ).click(function() {
//         alert( "Handler for .click() called." );
//       });
//     // function addPhoto(e){
//     //     console.log(e.target.dataset.url)
//     //     console.log(e.target.dataset.description)
//     // }
//     // const photos = document.getElementByClass(".add-photo");
//     // photos.addEventListener('click', addPhoto, false)
// })()

$(document).on("turbolinks:load", function() {
    const photos = []
    $( ".add-photo" ).click(function(e) {
        // console.log(e.target.dataset.url)
        // console.log(e.target.dataset.description)
        const photo = {url: e.target.dataset.url, quote: e.target.dataset.description }
        photos.push(photo)
        console.log(photos)
    });
    $("#submit").click(function(e){
    fetch('/photos', {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({data: photos}),
        })
        .then(response => response.json())
        .then(data => {
        console.log('Success:', data);
        })
        .catch((error) => {
        console.error('Error:', error);
        });
    })
})



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
