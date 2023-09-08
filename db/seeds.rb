# frozen_string_literal: true

ingr_rayzh = Ingredient.create!(name: 'Ряженка', en_name: :ryazhenka)
ingr_yog = Ingredient.create!(name: 'Йогурт 2%', en_name: :yogurt)
ingr_milk = Ingredient.create!(name: 'Безлактозное молоко', en_name: :milk)
ingr_udon = Ingredient.create!(name: 'Лапша удон', en_name: :udon)
ingr_vanil = Ingredient.create!(name: 'Ваниль', en_name: :vanil)
ingr_bakl = Ingredient.create!(name: 'Баклажан', en_name: :eggplant)
ingr_pepper = Ingredient.create!(name: 'Перец черный', en_name: :pepper)
ingr_slivki = Ingredient.create!(name: 'Сливки пастеризованные', en_name: :cream)
ingr_tofu = Ingredient.create!(name: 'Сыр тофу', en_name: :tofu)
ingr_kuraga = Ingredient.create!(name: 'Курага', en_name: :dried_apricots)
ingr_smorodina = Ingredient.create!(name: 'Черная смородина', en_name: :currant)
ingr_ptitim = Ingredient.create!(name: 'Птитим', en_name: :ptitim)
ingr_spag = Ingredient.create!(name: 'Спагетти', en_name: :spaghetti)
ingr_truf = Ingredient.create!(name: 'Трюфельное масло', en_name: :truf_oil)
ingr_oil = Ingredient.create!(name: 'Масло подсолнечное нераф', en_name: :veg_oil)
ingr_eggs = Ingredient.create!(name: 'Яйца', en_name: :eggs)
ingr_muka = Ingredient.create!(name: 'Мука овсяная', en_name: :flour)
ingr_farsh = Ingredient.create!(name: 'Фарш курино-мясной', en_name: :minced_meat)
ingr_tuna = Ingredient.create!(name: 'Тунец', en_name: :tuna)
ingr_beef = Ingredient.create!(name: 'Говядина', en_name: :beef)

dish = Dish.create(name: 'Запеканка с зеленой гречкой и сыром')
dish.ingredients.push(ingr_beef, ingr_vanil, ingr_pepper, ingr_udon, ingr_truf, ingr_slivki, ingr_oil, ingr_rayzh)

dish = Dish.create(name: 'Салат из фунчозы')
dish.ingredients.push(ingr_spag, ingr_muka, ingr_truf, ingr_oil, ingr_udon)

dish = Dish.create(name: 'Биточки из говядины с пюре')
dish.ingredients.push(ingr_tofu, ingr_tuna, ingr_kuraga, ingr_farsh, ingr_spag)

dish = Dish.create(name: 'Постный борщ')
dish.ingredients.push(ingr_beef, ingr_ptitim)

dish = Dish.create(name: 'Сырники с яблоком')
dish.ingredients.push(ingr_slivki, ingr_smorodina, ingr_tofu, ingr_pepper, ingr_eggs, ingr_farsh, ingr_vanil)

dish = Dish.create(name: 'Окунь с травами и печеными кореньями')
dish.ingredients.push(ingr_milk, ingr_beef)

dish = Dish.create(name: 'Рисовая каша с бананом')
dish.ingredients.push(ingr_eggs, ingr_vanil, ingr_tofu, ingr_udon, ingr_yog, ingr_truf)

dish = Dish.create(name: 'Кефирный пудинг с вишней')
dish.ingredients.push(ingr_muka, ingr_oil, ingr_smorodina, ingr_yog, ingr_tuna)

dish = Dish.create(name: 'Куриные биточки с киноа')
dish.ingredients.push(ingr_oil, ingr_udon, ingr_bakl, ingr_eggs, ingr_tuna, ingr_beef, ingr_truf)

dish = Dish.create(name: 'Салат овощной с булгуром')
dish.ingredients.push(ingr_beef)

dish = Dish.create(name: 'Говядина, тушеная с рататуем')
dish.ingredients.push(ingr_truf, ingr_ptitim, ingr_yog, ingr_tofu, ingr_smorodina, ingr_pepper, ingr_bakl, ingr_milk)

dish = Dish.create(name: 'Сметанный чизкейк на печенье Мария')
dish.ingredients.push(ingr_vanil, ingr_farsh, ingr_smorodina, ingr_muka, ingr_yog, ingr_slivki)

dish = Dish.create(name: 'Куриные митболы с кус-кусом')
dish.ingredients.push(ingr_spag)

dish = Dish.create(name: 'Суп кукурузный')
dish.ingredients.push(ingr_truf, ingr_vanil, ingr_yog, ingr_bakl)