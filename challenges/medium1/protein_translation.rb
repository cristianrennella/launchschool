# - Translate RNA sequences into proteins. 
#     RNA can be broken into three nucleotide sequences called codons,
#     and then translated to a polypeptide like so:

# RNA: "AUGUUUUCU" => translates to

# Codons: "AUG", "UUU", "UCU"
# => which become a polypeptide with the following sequence =>

# Protein: "Methionine", "Phenylalanine", "Serine"

# - There are also four terminating codons (also known as 'STOP' codons); 
#     if any of these codons are encountered (by the ribosome), 
#     all translation ends and the protein is terminated.

class InvalidCodonError < StandardError
end

class Translation
  CODON_TO_PROTEIN = { 
    ['AUG']                      => 'Methionine', 
    ['UUU', 'UUC']               => 'Phenylalanine',
    ['UUA', 'UUG']               => 'Leucine',
    ['UCU', 'UCC', 'UCA', 'UCG'] => 'Serine',
    ['UAU', 'UAC']               => 'Tyrosine',
    ['UGU', 'UGC']               => 'Cysteine',
    ['UGG']                      => 'Tryptophan',
    ['UAA', 'UAG', 'UGA']        => 'STOP'
  }

  def self.of_codon(codon)
    CODON_TO_PROTEIN.each do |inner_codon, polypeptide|
      return polypeptide if inner_codon.include?(codon)
    end
    raise InvalidCodonError
  end

  def self.of_rna(strand)
    strand.scan(/(...)/).each_with_object([]) do |strand, polypeptides|
      return polypeptides if of_codon(strand[0]) == 'STOP'
      polypeptides << of_codon(strand[0])
    end
  end
end