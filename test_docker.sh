docker run \
    -it --rm \
    -v ./tmp:/data \
    --workdir /code \
    cf_paga:0.0.1\
    python /code/run.py --adata_path /data/adata.h5ad --prior_information /data/prior_information.json --parameters /data/parameters.json --output_filename /data/output.pkl