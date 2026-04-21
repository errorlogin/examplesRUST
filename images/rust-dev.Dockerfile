FROM debian:13.4

# Устанавливаем Rust в Debian
RUN apt-get update && apt-get install -y \
    curl \
    gcc \
    make \
    pkg-config \
    libssl-dev \
    ca-certificates \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    && rm -rf /var/lib/apt/lists/*

# Добавляем cargo в PATH
ENV PATH="/root/.cargo/bin:${PATH}"
