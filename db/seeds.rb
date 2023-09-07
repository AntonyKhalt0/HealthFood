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

dish1 = Dish.create(name: 'Запеканка с зеленой гречкой и сыром')
dish1.ingredients.push(ingr_beef, ingr_vanil, ingr_pepper, ingr_udon, ingr_truf, ingr_slivki, ingr_oil, ingr_rayzh)

dish2 = Dish.create(name: 'Салат из фунчозы')
dish2.ingredients.push(ingr_spag, ingr_muka, ingr_truf, ingr_oil, ingr_udon)

dish3 = Dish.create(name: 'Биточки из говядины с пюре')
dish3.ingredients.push(ingr_tofu, ingr_tuna, ingr_kuraga, ingr_farsh, ingr_spag)

dish4 = Dish.create(name: 'Постный борщ')
dish4.ingredients.push(ingr_beef, ingr_ptitim)

dish5 = Dish.create(name: 'Сырники с яблоком')
dish5.ingredients.push(ingr_slivki, ingr_smorodina, ingr_tofu, ingr_pepper, ingr_eggs, ingr_farsh, ingr_vanil)
