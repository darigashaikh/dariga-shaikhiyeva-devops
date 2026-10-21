pipeline {
    agent any
    environment {
        STUDENT_NAME    = 'Shaikhiyeva'
        STUDENT_SURNAME = 'Dariga'
        STUDENT_GROUP   = 'IT2-2314'
        STUDENT_ID      = '38340'
        IMAGE           = 'dariga-shaikhiyeva-devops'
        CONTAINER       = 'dariga-shaikhiyeva-container'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'echo "Student: $STUDENT_NAME $STUDENT_SURNAME"'
                sh 'echo "Group: $STUDENT_GROUP"'
                sh 'echo "Student ID: $STUDENT_ID"'
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                sh 'python3 -m py_compile app/app.py'
            }
        }
        stage('Test') {
            steps {
                sh 'test -f Dariga_Shaikhiyeva_info.txt'
                sh 'test -f Dockerfile'
                sh 'bash scripts/Dariga_Shaikhiyeva_system.sh'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker rm -f $CONTAINER || true'
                sh '''docker run --name $CONTAINER \
                  -e STUDENT_NAME=$STUDENT_NAME -e STUDENT_SURNAME=$STUDENT_SURNAME \
                  -e STUDENT_GROUP=$STUDENT_GROUP -e STUDENT_ID=$STUDENT_ID $IMAGE'''
            }
        }
    }
    post {
        success { echo 'Pipeline finished successfully' }
        failure { echo 'Pipeline failed' }
    }
}
