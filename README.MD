# README
# Secure Synthetic Data Generation for Fraud Detection: A Generative Model Approach with Privacy Preservation and Class Imbalance Handling

Using generative neural networks, specifically Variational Autoencoders (VAEs), to create synthetic data that mimics sensitive data while preserving privacy. This synthetic data can help in developing better fraud detection models without compromising privacy.

## Motivation 

 A data science company has the problem that they cannot access highly sensitive data due to legal concerns on the customers side. This leads to the problem that no businness relationship can be build, because no algorithm can be trained that depicts the companies capabilites. 
 Generative models emerge as a potential remedy by allowing for the generation of synthetic data. Notably, synthetic data, is anonymous in a legal sense, serves as a viable solution for the secure exchange of sensitive data.


## Central Findings

- **VAEs Effectiveness**: VAEs demonstrate proficiency in reproducing data, particularly through the Data-generation process.
- **Challenges with Imbalance**: Reproducing minority classes poses challenges, but oversampling can mitigate this issue effectively.
- **Hyperparameter Tuning**: Optimizing hyperparameters enhances model performance, with VAEs showcasing promising results in replicating minority classes post-oversampling.
- **Comparison with CGANs**: VAEs outperform CGANs in utility scores, especially without oversampling.
- **Privacy Analysis**: VAE-generated data offers higher privacy levels, especially with increased latent dimensions.

VAEs demonstrate the capability to reproduce data effectively, particularly through the Data-generation process, as can be seen here:
Green = Original test data; Blue is syntethic data.
![Optimal Model](/reports/figures/optimal_model.png)
Challenges arise in reproducing minority classes, especially through the S-generation process. Yet with oversampling, this is possible as well:
![Optimal Model](/reports/figures/optimal_model_sample.png)


Challenges exist in adapting attacks like the Monte Carlo attack to tabular data, suggesting the need for further research.
VAEs tend to overlook minority classes, prompting exploration into architectures that better address this issue.
Understanding the point at which VAEs overfit remains an open question.
Future research directions include exploring differential privacy, incorporating time dimension with recurrent neural networks, and investigating conditional VAEs.

## Recommendations and Evaluation

- Well-trained VAEs, particularly through the D-generation process, offer promising solutions for synthetic data generation.
- Consideration of oversampling and model selection based on use case requirements is crucial.
- VAEs demonstrate potential for synthetic data generation while preserving privacy and providing high utility.

## Usage

### Data Preparation: 
Refer to `data_preparation.ipynb` for steps involved in data preprocessing and preparation. 

### Model Training: 
The hyperparameter tuning information is stored in the CSV file: `notebooks\logs\hparam_tuning_vae_2\CSV\hparams_table.csv`.
Choose one of the optimal architectures.
Utilize notebook `Base_updated_data.ipynb` or `CGAN_Approach.ipynb` for training VAE and CGAN models, respectively.

### Hyperparameter Training: 
Use `VAE_hyper_parameter_search.ipynb` for further hyperparameter tuning using Tensorboard.

### Starting Tensorboard with Logs: 
Start the Tensorboard with logs using the following command:

```
tensorboard --logdir=logs/hparam_tuning_vae_2
``` 

### Evaluation: 
Assess model performance using Classifications.ipynb for classification evaluation and K_Level_Analysis.ipynb for privacy analysis
and Monte_Carlo_Attack.ipynb for the membership inference attack
With higher number of latent dimensions, the K-Level first decreases and then increases. Yet the F1 Score either has a lower bound or even increases.
That means with higher number of latent dimensions one might generate higher privacy scores.

![K_Level](/reports/figures/K-Levels.png)
![F_1](/reports/figures/F1.png)

### the following data structure is used, adpted from cookie cutter data science projects

```plaintext
data/
│
├── interim/
│   ├── generated/
│   │   ├── base/
│   │   ├── D-Generation/
│   │   ├── S-Generation/
│   └── privacy_testing/
│       ├── K_Level_data/
│       ├── Monte_Carlo_Attack_Data/
├── processed/
├── raw
models/
│
├── CGAN/
├── Claassifier
├── VAE
notebooks/
│
├── logs/ # contains the logs of hyperparameter tuning
├── autoencoder.ipynb # 
├── Base_Experiment.ipynb # the base experiment that shows that a VAE would capable of generating tabular data
├── Base_updated_data.ipynb # this is the VAE with the custom test step.
├── CGAN_Approach.ipynb # the CGAN approach, yet not finetune compared to VAE
├── Classifications.ipynb # the classification to evaluate the utility of the syntethic data.
├── data_preparation.ipynb # the preparation steps for different data sets.
├── EDA_and_Visualizations.ipynb # the note book were most of the visualizations happen
├── K_Level_Analysis.ipynb # according to Li et al. (2019).
├── Monte_Carlo_Attack.ipynb # according to (Hilprecht et al. 2019)
├── VAE_hyper_parameter_search.ipynb # grid search for optimal hyperparamters, see also the logs folder
```plaintext
