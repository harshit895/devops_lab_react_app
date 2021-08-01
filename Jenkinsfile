node() {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Data Transfer'
                sh 'aws s3 sync . s3://test-bucket-stpl/test --exclude "*" --include "*.sh"'
        }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
