export CONDACONFIGDIR=""
cd() { builtin cd "$@" && 
if [ -f $PWD/environment.yml ]; then
    export CONDACONFIGDIR=$PWD
    # File name
    file="environment.yml"
    # Extract the line containing the "name" key and then get its value
    name=$(grep 'name:' $file | awk '{print $2}')

    # Output the extracted name
    # Check if conda activate failed

    conda activate $name
    if [ $? -ne 0 ]; then
        echo "Creating conda environment $name because it does not exist."
        # Add any additional commands you want to run on failure here
        conda env create -f $file
        conda activate $name
    fi
elif [ "$CONDACONFIGDIR" ]; then
    if [[ $PWD != *"$CONDACONFIGDIR"* ]]; then
	export CONDACONFIGDIR=""
	conda deactivate
    fi
fi }
