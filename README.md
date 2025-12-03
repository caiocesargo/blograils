CarBlog

Tendências, notícias e lançamentos do mundo automobilístico

O CarBlog é uma aplicação web desenvolvida em Ruby on Rails com PostgreSQL e Bootstrap, criada para manter entusiastas informados sobre as principais novidades do universo automotivo. O projeto apresenta um sistema completo de gerenciamento de posts (CRUD), com layout responsivo e foco em simplicidade, funcionando como uma plataforma de conteúdo sobre mercado, tecnologia e tendências do setor automobilístico.

- Objetivo

O CarBlog foi desenvolvido para demonstrar a construção de uma aplicação web moderna utilizando Rails, aplicando boas práticas da arquitetura MVC e oferecendo uma interface simples para publicação e leitura de artigos automotivos.
Seu propósito é servir como vitrine de conteúdos envolvendo:

Lançamentos de carros

Tendências de mercado

Curiosidades automotivas

Notícias relevantes do setor

- Principais Funcionalidades

CRUD completo de posts — criar, editar, visualizar e excluir publicações

Interface responsiva com Bootstrap

Página inicial com listagem de posts

Menu superior com seções Home, Lançamentos e Contato

Estrutura organizada seguindo o padrão MVC do Ruby on Rails

- Tecnologias Utilizadas

Ruby on Rails 7

PostgreSQL

Bootstrap 5

HTML5 / ERB

Renderização dinâmica com Rails Views

- Estrutura do Projeto

car_blog/
├── app/
│   ├── models/        → Modelos da aplicação (Post)
│   ├── controllers/   → Lógica das rotas e fluxo de dados
│   └── views/         → Páginas e templates (index, show, form)
├── config/            → Rotas, inicializadores e configurações
├── db/                → Migrações e schema do PostgreSQL
└── public/            → Arquivos estáticos

- Como Executar Localmente
1. Clone o repositório
git clone https://github.com/seu-usuario/car_blog.git
cd car_blog

2. Instale as dependências
bundle install

3. Configure o banco de dados
rails db:create db:migrate

4. Inicie o servidor
rails s

5. Acesse no navegador

http://localhost:3000
