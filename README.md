# github-actions
Testing things with GitHub actions

### NOTES
- The `build` folder contains any temporary files / artifacts
- The `package.json` is there for any workflows that need an example node setup
- Most of these require `environments` to be set up on the repo

### EXAMPLES
- `approval.yml` - Manual approval
- `artifacts.yml` - Passing artifacts between jobs
- `aws.yml` - Upload to AWS S3
- `delete-branch.yml` - Delete a specified branch from GitHub
- `dump-contexts.yml` - Dump GitHub Actions contexts
- `env-vars.yml` - Using environment variables
- `job-output.yml` - Reference an exported variable from a previous job
- `manual-trigger.yml` - Trigger a workflow manually with parameters
- `npm-caching.yml` - Cache NPM's `node_modules`
- `os.yml` - Different operating systems on different steps
- `runtime-variables.yml` - Passing in runtime variables when starting a job

### TODO
- Examples
    - Using docker in an action

### TESTING
aba
