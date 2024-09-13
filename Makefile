SHELL := /bin/bash

.PHONY: default check-tools install-tools help

default: help

check-tools:
	@echo "🔍 Checking required tools..."
	@which rustc > /dev/null 2>&1 && echo "✅ Rust is installed 🍺" || (echo "❌ Rust is not installed" && exit 1)
	@which cargo > /dev/null 2>&1 && echo "✅ Cargo is installed 🍺" || (echo "❌ Cargo is not installed" && exit 1)
	@which cargo-deny > /dev/null 2>&1 && echo "✅ cargo-deny is installed 🍺" || (echo "❌ cargo-deny is not installed" && exit 1)
	@which cargo-generate > /dev/null 2>&1 && echo "✅ cargo-generate is installed 🍺" || (echo "❌ cargo-generate is not installed" && exit 1)
	@which typos > /dev/null 2>&1 && echo "✅ typos-cli is installed 🍺" || (echo "❌ typos-cli is not installed" && exit 1)
	@which git-cliff > /dev/null 2>&1 && echo "✅ git-cliff is installed 🍺" || (echo "❌ git-cliff is not installed" && exit 1)
	@which cargo-nextest > /dev/null 2>&1 && echo "✅ cargo-nextest is installed 🍺" || (echo "❌ cargo-nextest is not installed" && exit 1)
	@pip show pre-commit > /dev/null 2>&1 && echo "✅ pre-commit is installed 🍺" || (echo "❌ pre-commit is not installed" && exit 1)
	@echo "✅ All required tools are installed! 🎉"

install-tools:
	@echo "🛠️ Installing required tools..."
	@echo "🦀 Updating Rust..."
	@rustup update
	@echo "📦 Installing cargo-deny..."
	@cargo install --locked cargo-deny
	@echo "🔍 Installing typos-cli..."
	@cargo install typos-cli
	@echo "📊 Installing git-cliff..."
	@cargo install git-cliff
	@echo "🧪 Installing cargo-nextest..."
	@cargo install cargo-nextest --locked
	@echo "🔧 Installing pre-commit..."
	@pip install pre-commit
	@echo "✅ All required tools have been installed! 🎉"

help:
	@echo "🚀 Welcome to the Rust Project Template! 🦀"
	@echo ""
	@echo "📚 Available commands:"
	@echo "  🔍 make check-tools   - Check if all required tools are installed"
	@echo "  🛠️ make install-tools - Install all required tools"
	@echo "  📚 make help          - Show this help message"
	@echo ""
	@echo "To get started, run 'make check-tools' to ensure you have all necessary tools."
	@echo "If any tools are missing, run 'make install-tools' to install them."
