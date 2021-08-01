node("any") {
  
  currentBuild.result = "SUCCESS"
  try {
        stage 'Checkout'
                checkout scm
    
        stage 'Build'
                echo "Building"
        }
  catch(err) {
      currentBuild.result = "FAILURE"
      throw err
  }
}
