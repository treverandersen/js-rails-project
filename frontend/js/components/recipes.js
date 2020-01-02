class Recipes {
  constructor() {
    this.recipes = []
    this.adapter = new RecipesAdapter()
    //this.bindEventListeners()
    this.fetchAndLoadRecipes()
  }

  fetchAndLoadRecipes() {
    this.adapter
      .getRecipes()
      .then(recipes => {
        recipes.forEach(recipe => this.recipes.push(recipe))
      })
      .then(() => {
        this.render()
      })
  }

  render() {
    const recipesContainer = document.getElementById('recipes-container')
    recipesContainer.innerHTML = 'my recipes here'
  }
}
