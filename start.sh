#!/bin/bash
python -m patchright install chromium
python api_solver.py --host 0.0.0.0 --port 8000
