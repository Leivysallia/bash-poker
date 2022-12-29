wordvar() {

	card1=${mchand[0]}
	card1="${card1## }"
	card1="${card1## }"
	card1="${card1%% }"
	card1="${card1%% }"
	card2=${mchand[1]}
	card2="${card2## }"
	card2="${card2## }"
	card2="${card2%% }"
	card2="${card2%% }"
	card3=${mchand[2]}
	card3="${card3## }"
	card3="${card3## }"
	card3="${card3%% }"
	card3="${card3%% }"
	card4=${mchand[3]}
	card4="${card4## }"
	card4="${card4## }"
	card4="${card4%% }"
	card4="${card4%% }"
	card5=${mchand[4]}
	card5="${card5## }"
	card5="${card5## }"
	card5="${card5%% }"
	card5="${card5%% }"

	word1=${card1%% *}
	word2=${card2%% *}
	word3=${card3%% *}
	word4=${card4%% *}
	word5=${card5%% *}

	class1=${card1##* }
	class2=${card2##* }
	class3=${card3##* }
	class4=${card4##* }
	class5=${card5##* }

}