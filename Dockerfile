# last working version sha256:f2a0e46408e35873cf428dd73274cdf63271811b523a5038def4327d0a4157a2
FROM texlive/texlive:latest

RUN apt-get update && apt-get install -y \
    biber \
    texlive-lang-german \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
