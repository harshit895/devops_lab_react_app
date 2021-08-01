node() {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Data Transfer'
                sh 'aws s3 cp Dockerfile s3://test-bucket-stpl/'
        }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
