# This example uses conda environments within rules 

aka requires use of `--use-conda` flag

```json
{
  "conda_env_file_path": "pipeline_env.yaml",
  "config_file_path": "config/config.yaml",
  "git_url": "https://github.com/jjjermiah/3_snakemake_conda-env.git",
  "output_files": [
    "results/output.txt"
  ],
  "pipeline_name": "snakemake_conda-env",
  "snakefile_path": "Snakefile"
}
```