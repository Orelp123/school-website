
function validateLogin()
{
        const email = document.getElementById("emailId").value.trim();
        const password = document.getElementById("passwordId").value.trim();

        if (email === "" || password === "") {
            alert("Please fill in both email and password fields.");
        return false; // prevent form submission
      }

    return true; // allow submission
}