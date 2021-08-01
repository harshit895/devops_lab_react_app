node() {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Data Transfer'
                sh 'aws s3 cp *.sh src s3://test-bucket-stpl/test'
        }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
