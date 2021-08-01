node() {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Data Transfer'
                sh 'aws s3 sync . s3://test-bucket-stpl/test --exclude "*" --include "*.sh"'
        
        stage 'Print Commit ID'
                echo "GIT_COMMIT is ${GIT_COMMIT}"
  
  }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
