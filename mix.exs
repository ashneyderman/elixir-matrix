defmodule Matrix.Mixfile do
  use Mix.Project

  def project do
    [
      app: :matrix,
      version: "0.3.1",
      description: """
      Matrix is a linear algebra library for manipulating dense matrices. Its
      primary design goal is ease of use.
      """,
      package: [
        maintainers: ["Tom Krauss"],
        licenses: ["Apache 2.0"],
        links: %{
          "GitHub" => "https://github.com/twist-vector/elixir-matrix.git",
          "Docs" => "http://http://hexdocs.pm/matrix"
        }
      ],
      elixir: "~> 1.1",
      deps: [
        {:ex_doc, "~> 0.14", only: :dev},
        {:exprintf, "~> 0.2"}
      ],
      docs: [extras: []]
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :exprintf]]
  end
end
