node {
    stage('Checkout SCM') {
      checkout scm
    }
    def pythonImage
    stage('build docker image') {
      pythonImage = docker.build("flask-demo:latest")
    }
    stage('test') {
      pythonImage.inside {
        sh '. /flask-app/venv/bin/activate && python -m pytest --junitxml=results.xml'
      }
    }
    stage('collect results') {
      junit 'results.xml'
    }
}
