FROM openjdk:16-buster
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y wget unzip
RUN wget http://nlp.stanford.edu/software/stanford-corenlp-latest.zip
RUN unzip stanford-corenlp-latest.zip
WORKDIR /stanford-corenlp-4.2.0
RUN echo 'for file in `find /app/stanford-corenlp-4.2.0 -name "*.jar"`;' >> ~/.bashrc
RUN echo 'do export CLASSPATH="$CLASSPATH:`realpath $file`"; done' >> ~/.bashrc
RUN . ~/.bashrc
CMD [ "java", "edu.stanford.nlp.pipeline.StanfordCoreNLPServer", "-port", "$PORT", "-timeout", "15000" ]
