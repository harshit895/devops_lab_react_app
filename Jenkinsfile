node() {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Data Transfer'
                sh 'aws s3 cp *.sh s3://test-bucket-stpl/ --recursive'
        }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
