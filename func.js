$(document).ready(function() {
    $('#contactForm').on('submit', function(e) {
        e.preventDefault();

        const formData = {
            email: $('#inputEmail').val(),
            message: $('#message').val()
        };

        $.ajax({
            url: 'sendMessage.php',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(formData),
            success: function(response) {
                if (response.success) {
                    alert('Message sent successfully!');
                    $('#contactForm')[0].reset();
                } else {
                    alert(response.error);
                }
            },
            error: function(xhr, status, error) {
                console.error('Error:', error);
                alert('There was an error sending your message.');
            }
        });
    });
});