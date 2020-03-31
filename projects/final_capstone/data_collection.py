#This product uses the TMDb API but is not endorsed or certified by TMDb.

from tmdbv3api import TMDb
from tmdbv3api import Movie
import pandas as pd
from time import time
from datetime import timedelta
import random
from os.path import join

big_start_time = time()

OUTPUT_PATH = r'C:\Users\philb\Datasets\movies_tmdb'
max_page = 686500
low_page = 0
high_page = 686500
working_range = range(low_page, high_page)
input_seed = 27
random.seed(input_seed)
RANDOM_RANGE = random.sample(working_range, high_page - low_page)

#this function is the powerhorse of the script, it let's you query and collect a batch of movies from The Movie DB, then saves the batch to a specified location
def run_batch(batch, start_pos, batch_size, update_interval):
    tmdb = TMDb()
    movie = Movie()
    tmdb.debug = False
    tmdb.api_key = 'MY_API_KEY'
    
    print('-'*80)
    print(f'WORKING ON BATCH {batch}...')
    print('-'*80)
    
    iter_time, start_time = time(), time()
    pos = start_pos
    movies = []
    
    for batch_amt, page_id in enumerate(RANDOM_RANGE[start_pos:]):
        if (batch_amt % update_interval == 0) and (batch_amt != 0):
                up_iter = time()
                iter_time_print = str(timedelta(seconds=round(up_iter - iter_time)))
                total_time_print = str(timedelta(seconds=round(up_iter - start_time)))
                print(f'Done with {batch_amt} movies in batch {batch}, pos={pos} (Interval: {iter_time_print}) (Since batch start: {total_time_print})')
                iter_time = up_iter
        
        try:
                current_movie = movie.details(page_id)
                
                if current_movie.adult == True:
                    pos += 1
                elif ((len(movies) % batch_size == 0) and (len(movies) != 0)):
                    dfs = []
                    for movie in movies:
                        dfs.append(pd.DataFrame([movie.entries]))
                    batch_df = pd.concat(dfs)
                    batch_path = join(OUTPUT_PATH, f'batch_{batch}.csv')
                    batch_df.to_csv(batch_path)
                    total_seconds = time() - start_time
                    print_time = str(timedelta(seconds=round(total_seconds)))
                    print(f'DONE - BATCH {batch} EXPORTED, END_POSITION={pos},  (Time to complete: {print_time})')
                    batch += 1
                    pos += 1
                    return batch, pos
                else:
                    movies.append(current_movie)
                    pos += 1
        except:
            pos += 1

#STARTING PARAMETERS
batch = 1
pos = 0
batch_size = 10000
update_interval = 1000
no_batches = 20

print('-------------------')
print('STARTING PARAMETERS')
print('-------------------')
print(f'BATCH={batch}')
print(f'START_POSITION={pos}')
print(f'BATCH_SIZE={batch_size}')
print(f'UPDATE_INTERVAL={update_interval}')
print(f'NUMBER_OF_BATCHES={no_batches}')

#This is where the batch and collect function is finally called with a simple for loop for a select number of batches,
#the function also returns the final position of the list where the batch finished running (so it can start there next)
#batch
for i in range(no_batches):
    batch, pos = run_batch(batch, pos, batch_size, update_interval)
    
big_seconds = time() - big_start_time
print_time = str(timedelta(seconds=round(big_seconds)))
print('-'*80)
print(f'ALL COMPLETE | (END_POSITION + 1) = {pos} (start here next),  (TOTAL TIME: {print_time})')
print('-'*80)

#This product uses the TMDb API but is not endorsed or certified by TMDb.