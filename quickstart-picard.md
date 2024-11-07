# Picard Read Processing
In genomics pipelines, we use Picard functions for a range of processing steps.

Sharing these horrible notes as might be useful but not currently used anywhere.

# ### Deduplicate aligned reads

# # conda is in a separate environment - avoid java version conflict
# conda deactivate
# conda activate picard

# ## picard needs read group info

# #### Note Read Group Library (RGLB) has format Flowcell_Lane and will need changing if more than one flowcell or lane per sample 
# /usr/bin/time --verbose \
# picard AddOrReplaceReadGroups \
# -I ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.bam \
# -O ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.RG.bam \
# --RGLB lib1 \
# --RGPL illumina \
# --RGPU unit1 \
# --RGSM ${sample_id}

# ## sort before removing duplicates
# ## First sort reads
# samtools sort -o ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.RG.sorted.bam ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.RG.bam

# /usr/bin/time --verbose \
# JAVA_OPTS="-Xmx16g" picard MarkDuplicates \
# -I ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.RG.sorted.bam \
# -O ${alignDir}/${sample_id}/Aligned.toTranscriptome.out.RG.sorted.dedup.bam \
# -M output_metrics.txt \
# --REMOVE_DUPLICATES true\
# --MAX_RECORDS_IN_RAM 250000 # reduces reads held in RAM while writing output - jobs were failing with memory error @ 16GB

# ## Remove intermediate files
