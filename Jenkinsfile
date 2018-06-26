node {
    def app

    stage('Clone Repo') {
	checkout scm
    }

    stage('Build image') {
	app = docker.build("test/testtest")
    }

    stage('Test image') {
	app.inside {
	    sh 'echo "tests passed"'
	}
    }

    stage('Push image') {
	sh 'echo ${env.BUILD_NUMBER}
    }
}
