require 'spec_helper'

describe 'DiseaseControl' do
  it '1: Avalia sintomas de grupos e retorna 1' do
    groups = <<~GROUPS
      coriza, tosse
      febre, coriza
    GROUPS

    target_symptoms = "coriza"

    expect(DiseaseControl.new.evaluate(groups, target_symptoms)).to eq 1
  end

  it '2: Avalia sintomas de grupos e retorna 0' do
    groups = <<~GROUPS
      coriza, tosse
      febre, coriza
    GROUPS

    target_symptoms = "febre"

    expect(DiseaseControl.new.evaluate(groups, target_symptoms)).to eq 0
  end

  it '3: Avalia sintomas de grupos e retorna 2' do
    groups = <<~GROUPS
      coriza, náusea, vômito, dor no corpo, febre
      vômito, dor no corpo, febre, dor de cabeça, coriza
      febre, coriza

      coriza, tosse
      tosse, febre

      coriza
      coriza
      coriza

      febre
    GROUPS

    target_symptoms = "coriza"

    expect(DiseaseControl.new.evaluate(groups, target_symptoms)).to eq 2
  end

  it '4: Avalia sintomas de grupos e retorna 2' do
    groups = <<~GROUPS
      coriza, náusea, vômito, dor no corpo, febre
      vômito, dor no corpo, febre, dor de cabeça, coriza
      febre, coriza

      coriza, tosse, febre
      tosse, febre

      coriza, tosse
      diarreia, fadiga

      febre, coriza, tosse

      diarreia, febre
      fadiga, dor de cabeça
      dor muscular, febre

      dor de cabeça, febre, tosse, coriza
      febre, tosse, dor no corpo
      fadiga, diarreia
      febre, diarreia, dor abdominal
    GROUPS

    target_symptoms = "febre, tosse"

    expect(DiseaseControl.new.evaluate(groups, target_symptoms)).to eq 2
  end

  it '5: Avalia sintomas de grupos e retorna 3' do
    groups = <<~GROUPS
      coriza, tosse, febre, espirro
      tosse, febre, diarreia, dor de cabeça
      espirro, dor no corpo

      dor de cabeça, espirro, coriza
      tosse, espirro, dor de cabeça, coriza
      febre, dor de cabeça, coriza, espirro
      diarreia, espirro, coriza, dor de cabeça, tosse, náusea

      coriza, tosse, febre
      diarreia, fadiga
      febre, dor de cabeça
      náusea, vômito, febre, dor abdominal

      coriza, náusea, vômito, dor no corpo
      vômito, febre, dor de cabeça, coriza
      febre, coriza, dor no corpo
      tosse, espirro

      febre, coriza, tosse
      dor de garganta, febre

      dor de cabeça, febre, espirro, coriza
      tosse, espirro, dor de cabeça, dor no corpo, coriza
      febre, dor de cabeça, coriza, espirro

      febre, dor de cabeça, coriza, espirro, diarreia, dor abdominal

      diarreia, febre
      fadiga, dor de cabeça
      dor muscular, febre

      febre, coriza, vômito
      febre, tosse, dor de cabeça
      fadiga, diarreia, febre
      febre, diarreia, dor abdominal
    GROUPS

    target_symptoms = "espirro, coriza, dor de cabeça"

    expect(DiseaseControl.new.evaluate(groups, target_symptoms)).to eq 3
  end
end
