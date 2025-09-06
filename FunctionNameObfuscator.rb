module FunctionNameObfuscator
  class ObfuscateFunction
    def self.create_keys
      #  0  1  2  3  4  5  6  7  8  9 10 11 12
      # 13 14 15 16 17 18 19 20 21 22 23 24 25
      
      created_key = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").shuffle.join("")
        
      # Turn Shuffled Alphabet Into Reciprocal Pair
      alph_1 =  created_key[0] +  created_key[1] + created_key[2] + created_key[3] +  created_key[4] +  created_key[5] +
                created_key[6] +  created_key[7] + created_key[8] + created_key[9] + created_key[10] + created_key[11] +
               created_key[12] +
               
               created_key[13] + created_key[14] + created_key[15] + created_key[16] + created_key[17] + created_key[18] +
               created_key[19] + created_key[20] + created_key[21] + created_key[22] + created_key[23] + created_key[24] +
               created_key[25]
               
      alph_2 = alph_1[13] + alph_1[14] + alph_1[15] + alph_1[16] + alph_1[17] + alph_1[18] +
               alph_1[19] + alph_1[20] + alph_1[21] + alph_1[22] + alph_1[23] + alph_1[24] +
               alph_1[25] +
               
                alph_1[0] +  alph_1[1] + alph_1[2] + alph_1[3] +  alph_1[4] +  alph_1[5] +
                alph_1[6] +  alph_1[7] + alph_1[8] + alph_1[9] + alph_1[10] + alph_1[11] +
               alph_1[12]
      
      open("Keys/key1.txt", "w") { |f|
        f.puts alph_1
      }
      
      open("Keys/key2.txt", "w") { |f|
        f.puts alph_2
      }
    end
    
    def self.fake_function_name
      word_classes = [
        [["LE",  "LE"], ["LA",  "LA"], ["LES", "LES"]],
        [["LA",  "LE"], ["LA",  "LA"], ["LA",  "LES"]],
        [["LES", "LE"], ["LES", "LA"], ["LES", "LES"]],
      ]
      
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      function_class = word_classes[cur_row][cur_col][cur_arr]
      
      nouns = [
        [["POMME",  "POMME"], ["POMME",  "BANANE"], ["POMME",  "ORANGE"], ["POMME",  "CITRON"]],
        [["BANANE", "POMME"], ["BANANE", "BANANE"], ["BANANE", "ORANGE"], ["BANANE", "CITRON"]],
        [["ORANGE", "POMME"], ["ORANGE", "BANANE"], ["ORANGE", "ORANGE"], ["ORANGE", "CITRON"]],
        [["CITRON", "POMME"], ["CITRON", "BANANE"], ["CITRON", "ORANGE"], ["CITRON", "CITRON"]],   
      ]
      
      row_options = [0, 1, 2, 3]
      col_options = [0, 1, 2, 3]
      arr_options = [0, 1]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      function_nouns = nouns[cur_row][cur_col][cur_arr]
      
      adjectives = [
        [["ROUGE",      "ROUGE"], ["ROUGE",       "GRISJAUNE"], ["ROUGE",      "ORANGE"], ["ROUGE",      "JAUNEBLANC"]],
        [["GRISJAUE",   "ROUGE"], ["GRISJAUNE",   "GRISJAUNE"], ["GRISJAUNE",  "ORANGE"], ["GRISJAUNE",  "JAUNEBLANC"]],
        [["ORANGE",     "ROUGE"], ["ORANGE",      "GRISJAUNE"], ["ORANGE",     "ORANGE"], ["ORANGE",     "JAUNEBLANC"]],
        [["JAUNEBLANC", "ROUGE"], ["JAUNEBLANC",  "GRISJAUNE"], ["JAUNEBLANC", "ORANGE"], ["JAUNEBLANC", "JAUNEBLANC"]],
      ]
      
      row_options = [0, 1, 2, 3]
      col_options = [0, 1, 2, 3]
      arr_options = [0, 1]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      function_adjective = adjectives[cur_row][cur_col][cur_arr]
      
      function_name = function_class + function_nouns + function_adjective
      
      key1 = File.read("Keys/key1.txt").strip.to_s
      key2 = File.read("Keys/key2.txt").strip.to_s
      
      print "Your obfuscated function name is: "; puts function_name.tr key1, key2.downcase 
    end
    
    def self.obfuscate_function
      print "What is your function name? << "; function_name = gets.chomp
      
      key1 = File.read("Keys/key1.txt").strip.to_s
      key2 = File.read("Keys/key2.txt").strip.to_s
      
      print "Your obfuscated function name is: "; puts function_name.tr key1, key2.downcase
    end
  end
end
