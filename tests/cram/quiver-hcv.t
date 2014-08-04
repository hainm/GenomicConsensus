
Bite-sized Quiver test using the HCV dataset

  $ export DATA=$TESTDIR/../data
  $ export INPUT=$DATA/hcv/aligned_reads.cmp.h5
  $ export REFERENCE=$DATA/hcv/HCV_Ref_For_187140.fasta

Quiver actually makes one error here, which is kind of disappointing,
but this data is from a really ancient instrument-software version, so
I'm not all that surprised.

  $ quiver -p unknown -x0 -q0 $INPUT -r $REFERENCE -o v.gff -o css.fa -o css.fq

  $ cat v.gff
  ##gff-version 3
  ##pacbio-variant-version 2.1
  ##date * (glob)
  ##feature-ontology http://song.cvs.sourceforge.net/*checkout*/song/ontology/sofa.obo?revision=1.12
  ##source GenomicConsensus * (glob)
  ##source-commandline * (glob)
  ##source-alignment-file * (glob)
  ##source-reference-file * (glob)
  ##sequence-region 5primeEnd 1 156
  ##sequence-region 3primeEnd 1 386
  3primeEnd\t.\tdeletion\t296\t296\t.\t.\t.\treference=G;variantSeq=.;coverage=92;confidence=4 (esc)


  $ cat css.fa
  >5primeEnd|quiver
  GGAACCGGTGAGTACACCGGAATTGCCAGGACGACCGGGTCCTTTCGTGGATAAACCCGC
  TCAATGCCTGGAGATTTGGGCGTGCCCCCGCAAGACTGCTAGCCGAGTAGTGTTGGGTCG
  CGAAAGGCCTTGTGGTACTGCCTGATAGGGTGCTTG
  >3primeEnd|quiver
  TACCTGGTCATAGCCTCCGTGAAGGCTCTCAGGCTCGCTGCATCCTCCGGGACTCCCTGA
  CTTTCACAGATAACGACTAAGTCGTCGCCACACACGAGCATGGTGCAGTCCTGGAGCCCA
  GCGGCTCGACAGGCTGCTTTGGCCTTGATGTAGCAGGTGAGGGTGTTACCACAGCTGGTC
  GTCAGTACGCCGCTCGCGCGGCACCTGCGATAGCCGCAGTTTTCCCCCCTTGAATTAGTA
  AGAGGGCCCCCGACATAGAGCCTCTCGGTGAGGGACTTGATGGCCACGCGGGCTTGGGGT
  CCAGGTCACAACATTGGTAAATTGCCTCCTCTGTACGGATATCGCTCTCAGTGACTGTGG
  AGTCAAAGCAGCGGGTATCATACGA

  $ fold -60 css.fq
  @5primeEnd|quiver
  GGAACCGGTGAGTACACCGGAATTGCCAGGACGACCGGGTCCTTTCGTGGATAAACCCGC
  TCAATGCCTGGAGATTTGGGCGTGCCCCCGCAAGACTGCTAGCCGAGTAGTGTTGGGTCG
  CGAAAGGCCTTGTGGTACTGCCTGATAGGGTGCTTG
  +
  "RPRQSQRPQQPQPQPQQOQQQPQQQQQQRPRQQPPQRQPQRRRRQPPQRQPPQQPPQQQ
  QQPRPQPRQPQPQQQRRPRQQQPQPRQQRRQPRPPPQQQPQRQQQPQPPQQQQQPQQQRQ
  PQQRQPRPRPRQQQRQQQQQPRQQQPQQRRQQQRRQ
  @3primeEnd|quiver
  TACCTGGTCATAGCCTCCGTGAAGGCTCTCAGGCTCGCTGCATCCTCCGGGACTCCCTGA
  CTTTCACAGATAACGACTAAGTCGTCGCCACACACGAGCATGGTGCAGTCCTGGAGCCCA
  GCGGCTCGACAGGCTGCTTTGGCCTTGATGTAGCAGGTGAGGGTGTTACCACAGCTGGTC
  GTCAGTACGCCGCTCGCGCGGCACCTGCGATAGCCGCAGTTTTCCCCCCTTGAATTAGTA
  AGAGGGCCCCCGACATAGAGCCTCTCGGTGAGGGACTTGATGGCCACGCGGGCTTGGGGT
  CCAGGTCACAACATTGGTAAATTGCCTCCTCTGTACGGATATCGCTCTCAGTGACTGTGG
  AGTCAAAGCAGCGGGTATCATACGA
  +
  "QQRQQQPQPQPQPRQQRPQPPRPQQQQRQPQRQQQQQPQQQQQRQRQRQQPQQPRRPQP
  QPQQQQQPQQQPSQQQPQQQPRQQPQQQRQPQQQQQQPQPQQQQQQRQPPRPRRQRRRQQ
  QQPRPQQRRQQRRQQQQPQRQRPQPRQQPQQPPQRQRQQRPRQPPQQQQQQPPQRQQQQQ
  QPQQQQRPQRRQPQQQPQQPPPQPQPQQQPQQQQQPQQQQQQR5QPQQQRQPPQPRPQQQ
  QRQRSRJQQSPQQPPPPQPQPQQQPQQRQQPRQRQQQQQQRPQQQQPQQQRQPRQ%RQQQ
  PQPQRQQQRPQQQQRPQRQRQPQQQQQPRPQQQQRPPQQQPQQQQOQQQPQQQPQPQRRR
  PPQPPPRPQPRQQQPPQQPQPRQQQ
