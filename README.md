# ruby-dev-test-2

# Refactoring de relacionamento

## Desáfio

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Solução

Para resolver a tarefa,foi realizado uma nova migração, a criação de um join_table das duas tabelas, nessa mesma migração também é feita a importação dos dados antigos para a tabela nova.

## Notes
Testei modelos
Eu tento seguir os princípios do SOLID.

Você pode acessar em: 
```console
user@matrix:~$ rails console
```

## Project Requirements
- Ruby 2.4.1
- Rails 5.2.0

## Running Project
No terminal executar os comando:

```console
user@matrix:~$ rake db:create db:migrate
```

```console
user@matrix:~$ rails c
```
- Para criar uma novo Player
```console
user@matrix:~$ player = Player.new(name: 'Madonna')
```
- Para criar uma novo Album
```console
user@matrix:~$ album = Album.new(name: 'Peligro')
```

- Para criar relação de um album com um player
```console
user@matrix:~$ album.players << player
```
- ou para add um player ao um album
```console
user@matrix:~$ player.albums << album
```

## Running Testes
No terminal executar os comando:

```console
user@matrix:~$ rails test test/
```
