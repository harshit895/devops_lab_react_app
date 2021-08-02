node() {
  
  def currCommit = checkout(scm).GIT_COMMIT
  def prevCommit = checkout(scm).GIT_PREVIOUS_SUCCESSFUL_COMMIT
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Compare with Prev'
                if (currCommit == prevCommit) {
                      currentBuild.result = 'ABORTED'
                      error('Stopping Since No Changes Found on Repo')
                }
                    
        stage 'Building'
                echo "Building"
        
        stage 'Print Commit ID'
                echo "CURRENT COMMIT is ${currCommit}"
         
        stage 'Print Prev Commit ID'
                echo "PREVIOUS COMMIT is ${prevCommit}"
  }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
