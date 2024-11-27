# User.create!(email: 'teste@exemplo.com', password: 'senha123', password_confirmation: 'senha123')


p "Criando Products"
Product.create!(
  name: "Whey Protein",
  price: 110.00,
  stock: 5,
  brand: "Integral Medica",
  category: "Proteina",
  user_id: 1,
  url: 'https://m.media-amazon.com/images/I/71-1jWbbdmL.jpg'
)


Product.create!(
  name: "Multivitaminico",
  price: 50.00,
  stock: 7,
  brand: "Growth",
  category: "Vitamina",
  user_id: 1,
  url: 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/msc/msc61017/y/24.jpg'
)

Product.create!(
  name: "Creatina monohidratada",
  price: 100.00,
  stock: 5,
  brand: "Integral Medica",
  category: "Creatina",
  user_id: 1,
  url: "https://m.media-amazon.com/images/I/71fwRsnkyjL._AC_UF894,1000_QL80_.jpg"
)

Product.create!(
  name: "Barra de proteína",
  price: 20.00,
  stock: 30,
  brand: "Integral Medica",
  category: "Proteina",
  user_id: 1,
  url: 'https://m.media-amazon.com/images/I/81IMbbUlA-L.jpg'
)

Product.create!(
  name: "BCAA 2:1:1",
  price: 70.00,
  stock: 10,
  brand: "Growth",
  category: "Aminoácidos",
  user_id: 1,
  url: 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTMAvh6Rp1Gz1HAVYjoXheiQmKypnK_SzD6RPTmelywFAr0sbX0qFdu0rwMl4H_5M0zgczQXQ8sw3EyX147iv4LshG-fezxuVryT7lrLPCj81PsuSAwhHnuKYCw'
)

Product.create!(
  name: "Ômega 3",
  price: 60.00,
  stock: 15,
  brand: "Vitafor",
  category: "Saúde geral",
  user_id: 1,
  url: 'https://m.media-amazon.com/images/I/61NwoknrKrL.jpg'
)

Product.create!(
  name: "Glutamina",
  price: 80.00,
  stock: 8,
  brand: "Max Titanium",
  category: "Aminoácidos",
  user_id: 1,
  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrrQTeryI2B8cPOWHECY5lT1MWsYEjx9B5kQ&s'
)

Product.create!(
  name: "ZMA",
  price: 55.00,
  stock: 12,
  brand: "Integral Medica",
  category: "Vitaminas e Minerais",
  user_id: 1,
  url: 'https://m.media-amazon.com/images/I/61Szzkj4SFL.jpg'
)

Product.create!(
  name: "Hipercalórico",
  price: 120.00,
  stock: 6,
  brand: "Growth",
  category: "Ganho de Massa",
  user_id: 1,
  url: 'https://www.gsuplementos.com.br/upload/produto/imagem/hiper-mass-1kg-sabor-chocolate-growth-supplements.webp'
)

Product.create!(
  name: "Termogênico",
  price: 90.00,
  stock: 10,
  brand: "Max Titanium",
  category: "Emagrecedores",
  user_id: 1,
  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIDvX4gsJH6cYFoFwop666BekTxhlzQml15g&s'
)

p "Produtos criados"
