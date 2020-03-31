<h1 align='center'><i>Betcha Can't Guess What I Watched</i>: An Obscure Movie Recommender</h1>
<img src='https://www.themoviedb.org/assets/2/v4/logos/v2/blue_square_2-d537fb228cf3ded904ef09b136fe3fec72548ebc1fea3fbbd1ad9e36364db38b.svg' width="1000" height="100" align='center'>

<h4 align='center'><i><b>This product uses the TMDb API but is not endorsed or certified by TMDb.</b></i></h4>
<h2>Project Overview:</h2>
The goal of this project was to create a movie recommendation system with a twist: to recommend obscure/relatively unknown movies. Think of it as a hidden gem detector for films. The product's application includes the ability to enter keywords or another movie title and generates a list of obscure movies that are associated with the query. The data used comes from <a href='https://www.themoviedb.org/'>The Movie DB</a> by means of <a href='https://github.com/AnthonyBloomer/tmdbv3api'>tmdbv3api</a>.

<h2>Final Notebooks:</h2>

- <a href='https://nbviewer.jupyter.org/github/philbowman212/Thinkful_repo/blob/master/projects/final_capstone/final_notebook.ipynb'>Final Notebook: Project Summary</a>
- <a href='https://github.com/philbowman212/Thinkful_repo/blob/master/projects/final_capstone/final_product.ipynb'>Final Product</a>

<h2>Ancillary Notebooks:</h2>

- <a href='https://github.com/philbowman212/Thinkful_repo/blob/master/projects/final_capstone/data_wrangling_and_exploration.ipynb'>Data Wrangling and Exploration</a>
- <a href='https://github.com/philbowman212/Thinkful_repo/blob/master/projects/final_capstone/modeling_pipeline_and_evaluation.ipynb'>Modeling Pipeline and Evaluation</a>

<h2>Data Collection:</h2>

<img src='https://www.themoviedb.org/assets/2/v4/logos/v2/blue_square_2-d537fb228cf3ded904ef09b136fe3fec72548ebc1fea3fbbd1ad9e36364db38b.svg' width="100" height="50">

<i><b>This product uses the TMDb API but is not endorsed or certified by TMDb.</b></i>
- <a href='https://github.com/philbowman212/Thinkful_repo/blob/master/projects/final_capstone/data_collection.py'>data_collection.py</a>

<h2>Examples:</h2>

```python
movie_title = 'star wars'
get_recommendations(movie_title, kind='movie', x_sim=10)
```

Top 10 Obscure Movies Similar to Star Wars

|     id | title                                             | links                                   |
|-------:|:--------------------------------------------------|:----------------------------------------|
|  10179 | The Ice Pirates                                   | [https://www.themoviedb.org/movie/10179](https://www.themoviedb.org/movie/10179)  |
|  75311 | The People vs. George Lucas                       | [https://www.themoviedb.org/movie/75311](https://www.themoviedb.org/movie/75311)  |
|   9703 | The Last Legion                                   | [https://www.themoviedb.org/movie/9703](https://www.themoviedb.org/movie/9703)   |
| 328429 | Approaching the Unknown                           | [https://www.themoviedb.org/movie/328429](https://www.themoviedb.org/movie/328429) |
|  17277 | The Fall of the Roman Empire                      | [https://www.themoviedb.org/movie/17277](https://www.themoviedb.org/movie/17277)  |
|  19287 | Leprechaun 4: In Space                            | [https://www.themoviedb.org/movie/19287](https://www.themoviedb.org/movie/19287)  |
|  23719 | Trapped in Paradise                               | [https://www.themoviedb.org/movie/23719](https://www.themoviedb.org/movie/23719)  |
| 388885 | Secrets of the Force Awakens: A Cinematic Journey | [https://www.themoviedb.org/movie/388885](https://www.themoviedb.org/movie/388885) |
|  14460 | Battle Beyond the Stars                           | [https://www.themoviedb.org/movie/14460](https://www.themoviedb.org/movie/14460)  |
|  31380 | Tangents                                          | [https://www.themoviedb.org/movie/31380](https://www.themoviedb.org/movie/31380)  |

```python
query = 'superman and batman'
get_recommendations(query, kind='query', x_sim=10)
```

Top 10 Obscure Movies Similar to user search: "superman and batman"

|     id | title                                         | links                                   |
|-------:|:----------------------------------------------|:----------------------------------------|
|  22855 | Superman/Batman: Public Enemies               | [https://www.themoviedb.org/movie/22855](https://www.themoviedb.org/movie/22855)  |
|  17074 | The Batman Superman Movie: World's Finest     | [https://www.themoviedb.org/movie/17074](https://www.themoviedb.org/movie/17074)  |
|  50056 | Secret Origin: The Story of DC Comics         | [https://www.themoviedb.org/movie/50056](https://www.themoviedb.org/movie/50056)  |
| 166076 | Superman: Unbound                             | [https://www.themoviedb.org/movie/166076](https://www.themoviedb.org/movie/166076) |
| 279144 | The Death of "Superman Lives": What Happened? | [https://www.themoviedb.org/movie/279144](https://www.themoviedb.org/movie/279144) |
| 224746 | Bekas                                         | [https://www.themoviedb.org/movie/224746](https://www.themoviedb.org/movie/224746) |
|  17445 | Green Lantern: First Flight                   | [https://www.themoviedb.org/movie/17445](https://www.themoviedb.org/movie/17445)  |
| 456348 | Batman & Bill                                 | [https://www.themoviedb.org/movie/456348](https://www.themoviedb.org/movie/456348) |
|  45162 | Superman/Batman: Apocalypse                   | [https://www.themoviedb.org/movie/45162](https://www.themoviedb.org/movie/45162)  |
| 287757 | Scooby-Doo Meets Batman                       | [https://www.themoviedb.org/movie/287757](https://www.themoviedb.org/movie/287757) |