// Typing effect
const text = "Cybersecurity Student | CTF Player | Security Researcher";
let index = 0;

function typeEffect() {
    if (index < text.length) {
        document.getElementById("typing").innerHTML += text.charAt(index);
        index++;
        setTimeout(typeEffect, 50);
    }
}
typeEffect();

// Animate skill bars on scroll
const skills = document.querySelectorAll(".progress div");

window.addEventListener("scroll", () => {
    skills.forEach(skill => {
        const position = skill.getBoundingClientRect().top;
        const screen = window.innerHeight;

        if (position < screen) {
            skill.style.width = skill.getAttribute("data-width");
        }
    });
});
