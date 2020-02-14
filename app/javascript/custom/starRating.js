const emptyStar = star => {
  star.classList.remove("fas");
  star.classList.add("far");
};

const starsVoid = () => {
  document.querySelectorAll(".star").forEach(star => {
    emptyStar(star.firstChild);
  });
};

const fillStar = star => {
  star.classList.remove("far");
  star.classList.add("fas");

  const previousStar = star.parentNode.previousElementSibling;

  if (previousStar) {
    fillStar(previousStar.firstChild);
  }
};

const starOnMouseOver = event => {
  starsVoid();
  const star = event.currentTarget;
  fillStar(star);
};

const starOnClick = () => {
  document.getElementById("review_rating").value = document.querySelectorAll(
    ".star .fas"
  ).length;
};

const setRating = () => {
  const rating = document.getElementById("review_rating").value;
  if (!rating || rating === "0") {
    return starsVoid();
  }
  const starClass = `#star${rating}`;
  const star = document.querySelector(starClass).firstChild;
  fillStar(star);
};

const addStarListener = star => {
  star.addEventListener("mouseover", starOnMouseOver);
  star.addEventListener("click", starOnClick);
  star.addEventListener("mouseout", setRating);
};

window.initStarRating = () => {
  document.querySelectorAll(".star").forEach(star => {
    addStarListener(star.firstChild);
  });
};
