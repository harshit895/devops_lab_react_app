node() {
  
  def commitHash = checkout(scm).GIT_COMMIT
  def commitSuccessHash = checkout(scm).GIT_PREVIOUS_SUCCESSFUL_COMMIT
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Compare with Prev'
                if (commitHash == commitSuccessHash) {
                      currentBuild.result = 'ABORTED'
                      error('Stopping Since No Changes…')
                }
                    
        stage 'Data Transfer'
                sh 'aws s3 sync . s3://test-bucket-stpl/test --exclude "*" --include "*.sh"'
                sh 'aws s3 cp ./src s3://test-bucket-stpl/test --recursive'
        
        stage 'Print Commit ID'
                echo "GIT_COMMIT is ${commitHash}"
         
        stage 'Print Prev Commit ID'
                echo "PREVIOUS COMMIT is ${commitSuccessHash}"
  }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
