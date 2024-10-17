document.getElementById('submitComment').addEventListener('click', function() {
    let commentInput = document.getElementById('commentInput');
    let commentText = commentInput.value;

    if (commentText.trim() !== "") {
        let commentsContainer = document.getElementById('commentsContainer');

        let newComment = document.createElement('div');
        newComment.classList.add('comment');
        newComment.textContent = commentText;

        commentsContainer.appendChild(newComment);

        commentInput.value = "";  // Limpiar el campo de texto después de agregar el comentario
    }
});
