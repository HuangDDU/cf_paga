# copy file
method_dir="../../CellFateExplorer/cfe/method"
cp $method_dir/function/cf_paga.py $method_dir/function/parse_args.py $method_dir/definition/cf_paga.yml .
mv cf_paga.py run.py
mv cf_paga.yml definition.yml

# build docker
docker build -t cfe/cf_paga:0.0.1 .
