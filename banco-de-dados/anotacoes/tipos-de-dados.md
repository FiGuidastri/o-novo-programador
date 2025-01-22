BANCO DE DADOS
    TABELAS
        CAMPOS
            Nome, tipo, tamanho, nulo (NULL), valor padrão

---
# Principais tipos de dados
## 1. Tipos Numéricos
    TINYINT: Número inteiro pequeno (1 byte).
    SMALLINT: Número inteiro pequeno (2 bytes).
    MEDIUMINT: Número inteiro médio (3 bytes).
    INT (ou INTEGER): Número inteiro (4 bytes).
    BIGINT: Número inteiro grande (8 bytes).
    DECIMAL: Número com ponto fixo (precisão e escala definidas).
    NUMERIC: Sinônimo de DECIMAL.
    FLOAT: Número de ponto flutuante (precisão simples, 4 bytes).
    DOUBLE: Número de ponto flutuante (precisão dupla, 8 bytes).
    BIT: Tipo de dados de bits.

## 2. Tipos de Data e Hora
    DATE: Data no formato 'YYYY-MM-DD' (3 bytes).
    DATETIME: Data e hora no formato 'YYYY-MM-DD HH:MM:SS' (8 bytes).
    TIMESTAMP: Data e hora no formato 'YYYY-MM-DD HH:MM:SS' (4 bytes).
    TIME: Hora no formato 'HH:MM:SS' (3 bytes).
    YEAR: Ano no formato 'YYYY' (1 byte).

## 3. Tipos de Cadeias de Caracteres
    CHAR: Cadeia de caracteres com comprimento fixo (1 a 255 caracteres).
    VARCHAR: Cadeia de caracteres com comprimento variável (1 a 65,535 caracteres).
    TEXT: Texto de comprimento variável (até 65,535 caracteres).
    TINYTEXT: Texto curto (até 255 caracteres).
    MEDIUMTEXT: Texto de tamanho médio (até 16 MB).
    LONGTEXT: Texto longo (até 4 GB).
    BLOB: Objeto binário (até 65,535 bytes).
    TINYBLOB: Objeto binário pequeno (até 255 bytes).
    MEDIUMBLOB: Objeto binário médio (até 16 MB).
    LONGBLOB: Objeto binário longo (até 4 GB).

## 4. Tipos de Dados Espaciais
    GEOMETRY: Tipo para dados espaciais genéricos.
    POINT: Ponto no espaço (x, y).
    LINESTRING: Linha no espaço (sequência de pontos).
    POLYGON: Polígono no espaço (sequência de pontos fechada).
    MULTIPOINT: Conjunto de pontos.
    MULTILINESTRING: Conjunto de linhas.
    MULTIPOLYGON: Conjunto de polígonos.
    GEOMETRYCOLLECTION: Conjunto de objetos geométricos.

## 5. Tipos de Dados de JSON e Outras Estruturas
    JSON: Armazenamento de dados em formato JSON.

## 6. Tipos de Dados Booleanos
    BOOL: Tipo booleano (equivalente a TINYINT(1)).
    BOOLEAN: Sinônimo de BOOL.

## 7. Tipos de Dados de Enumeração
    ENUM: Lista de valores predefinidos. O MySQL armazena o valor como um índice (0, 1, 2, etc.).
    SET: Conjunto de valores predefinidos. Diferente do ENUM, pode armazenar múltiplos valores simultaneamente.

## 8. Tipos de Dados de Identificador
    UUID: Identificador único universal (comum para dados distribuídos).

---
# Comandos básicos
```sql
     USE databse
```
    para selecionar o banco de dados;
```sql
    CREATE TABLE table(
        column1 type1,
        column2 type2,
    )
```
    para criar uma tabela;
```sql
    DROP TABLE
```
    para excluir uma tabela;
```sql 
    AUTO_INCREMENTE
```
    usado em primary key para definir ela automaticamente;
```sql
    ALTER TABLE banco.table
``` 
    para alterar uma tabela em um banco de dados

```sql
     ADD
``` 
    para inserir uma nova coluna em uma tabela
```sql
    INSERT INTO table (campos à serem preenchidos)
    VALUES (inserir os dados de acordos com os campos)
```
    insere dados em uma tabela de acordo com os campos especificados

```sql
    SELECT dados 
    FROM table
```
    para selecionar dados de uma tabela
```sql
    WHERE
```
    para colocar uma condição no SELECT podemos usar AND e OR
```sql
    LIKE
```
    usado em consultas para realizar buscas em colunas de texto que correspondam a um padrão específico. Ele é frequentemente utilizado em conjunto com os curingas % e _ para criar padrões flexíveis de pesquisa.

```sql
    UPDATE
```
    usado para atualizar dados em uma tabela, nunca utilizar sem o WHERE
Os comandos LIMIT e OFFSET no MySQL são usados para controlar a quantidade de registros retornados em uma consulta SQL, especialmente úteis em paginação de resultados.

**LIMIT**
O comando LIMIT define o número máximo de registros que a consulta deve retornar.

Sintaxe
```sql
SELECT coluna1, coluna2
FROM tabela
LIMIT número_de_registros;
```
Exemplo
Retornar os primeiros 5 registros de uma tabela:
```sql
Copiar
Editar
SELECT * 
FROM usuarios 
LIMIT 5;
```
Retorna apenas os 5 primeiros registros da tabela.
**OFFSET**

O comando OFFSET especifica o ponto inicial para começar a retornar os registros. Ele é usado em conjunto com LIMIT.

Sintaxe
```sql
SELECT coluna1, coluna2
FROM tabela
LIMIT número_de_registros OFFSET início;
```
Exemplo
Ignorar os primeiros 10 registros e retornar os próximos 5:
```sql
SELECT * 
FROM usuarios 
LIMIT 5 OFFSET 10;
```
Isso retorna os registros de 11 a 15 (o índice começa em 0).
---
