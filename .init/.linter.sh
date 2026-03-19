#!/bin/bash
cd /home/kavia/workspace/code-generation/candidate-review-system-333633-333659/interview_reviewer_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

