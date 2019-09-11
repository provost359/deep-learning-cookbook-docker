# Containerized environment for the jupyter notebook of the Deep Learning Cookbook.
# Requirements:
# - Prepare mounted directory: git clone https://github.com/DOsinga/deep_learning_cookbook.git
# - Run with mounted directory: deep_learning_cookbook -> /app/deep_learning_cookbook
#   - Example: --mount type=bind,source=C:\work\docker\deep_learning_cookbook\deep_learning_cookbook,target=/app/deep_learning_cookbook
# - Forward port 8888

FROM ubuntu

EXPOSE 8888

RUN \
	apt-get update -y && \
	apt-get install -y git python3 python3-venv python3-pip && \
	cd /app/deep_learning_cookbook && \
	python3 -m venv venv3 && \
	source venv3/bin/activate && \
	pip3 install wheel && \
	pip3 install -r requirements.txt

#CMD \
#	jupyter notebook --ip=0.0.0.0 --allow-root --no-browser
	
ENTRYPOINT [ "jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]