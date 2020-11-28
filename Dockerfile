FROM openjdk:16-buster
COPY . .
RUN apt-get update && apt-get install -y wget unzip
RUN wget http://nlp.stanford.edu/software/stanford-corenlp-latest.zip
RUN unzip stanford-corenlp-latest.zip
WORKDIR /stanford-corenlp-4.2.0
RUN export CLASSPATH=$CLASSPATH:/stanford-corenlp-latest/stanford-corenlp-4.2.0/*:
CMD java -mx4g -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer -port $PORT
