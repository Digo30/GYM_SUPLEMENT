# User.create!(email: 'teste@exemplo.com', password: 'senha123', password_confirmation: 'senha123')


p "Criando Products"
Product.create(
  name: "Whey Protein",
  price: 110.00,
  stock: 5,
  brand: "Integral Medica",
  category: "Proteina",
  user_id: 1
)


Product.create(
  name: "Multivitaminico",
  price: 50.00,
  stock: 7,
  brand: "Growth",
  category: "Vitamina",
  user_id: 1

)

Product.create(
  name: "Creatina monohidratada",
  price: 100.00,
  stock: 5,
  brand: "Integral Medica",
  category: "Creatina",
  user_id: 1

)

Product.create(
  name: "Barra de proteína",
  price: 20.00,
  stock: 30,
  brand: "Integral Medica",
  category: "Proteina",
  user_id: 1
)
p "Produtos criados"
