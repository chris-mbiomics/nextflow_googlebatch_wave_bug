process python_version {
    conda 'conda-forge::python=3.13.1'

    input:
    val x

    output:
    stdout

    """
    echo $x
    python --version
    """
}

workflow {
    python_version(Channel.of(1, 2, 3)) \
    | view
}
