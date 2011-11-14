# -*- coding: utf-8 -*-
class Contato < ActiveRecord::Base



  validates_presence_of :sexo , :message => "Você deve informar o sexo"
  has_many :telefones
end
