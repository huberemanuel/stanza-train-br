download_vectors:
	wget -O data/skip_s300.zip http://143.107.183.175:22980/download.php?file=embeddings/word2vec/skip_s300.zip
	unzip data/skip_s300.zip -d data/wordvec/word2vec/Portuguese
	mv data/wordvec/word2vec/Portuguese/skip_s300.txt data/wordvec/word2vec/Portuguese/pt.vectors.txt
	
download_vectors_colab:
	cp /content/drive/MyDrive/Colab\ Notebooks/resources/skip_s300.zip data/
	unzip data/skip_s300.zip -d data/wordvec/word2vec/Portuguese
	mv data/wordvec/word2vec/Portuguese/skip_s300.txt data/wordvec/word2vec/Portuguese/pt.vectors.txt

download_data:
	# Bosque
	git clone https://github.com/UniversalDependencies/UD_Portuguese-Bosque data/udbase/UD_Portuguese-Bosque
	cat data/udbase/UD_Portuguese-Bosque/pt_bosque-ud-dev.conllu >> data/udbase/UD_Portuguese-Bosque/pt_bosque-ud-train.conllu
	# Porttinari-base
	git clone https://github.com/huberemanuel/UD_Portuguese-Porttinari.git data/udbase/UD_Portuguese-Porttinari