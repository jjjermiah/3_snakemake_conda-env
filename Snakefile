rule all:
    input:
        expand("results/summary{nu}.txt", nu=["1", "_2"])
    output:
        "results/output.txt"
    shell:
        "cat {input} > {output}"

rule makesummary:
    input:
        "procdata/medimgtools_output.txt"
    output:
        "results/summary{nu}.txt",
    threads:
        2,
    log:
        "logs/makesummary{nu}.log",
    shell:
        "echo 'sleeping for 10 seconds' && sleep 10 && cat {input} > {output} | tee {log} 2>&1"

rule medimg:
    output:
        "procdata/medimgtools_output.txt"
    conda:
        "workflow/envs/medimg.yaml"
    shell:
        """
        autopipeline --help > {output}
        """
