# deep-learning-cookbook-docker

Containerized environment for the jupyter notebook of the Deep Learning Cookbook.

Requirements:
- Prepare mounted directory: `git clone https://github.com/DOsinga/deep_learning_cookbook.git`
- Run with mounted directory: deep_learning_cookbook -> /app/deep_learning_cookbook
  - Example: `--mount type=bind,source=C:\work\docker\deep_learning_cookbook\deep_learning_cookbook,target=/app/deep_learning_cookbook`
- Forward port 8888

TODO:
- Test.
