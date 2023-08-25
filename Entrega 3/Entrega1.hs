{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use fewer imports" #-}
{-# HLINT ignore "Eta reduce" #-}
{-# HLINT ignore "Redundant bracket" #-}
import Data.List ( intercalate, elemIndex, find)
import System.IO ( withFile, hPutStr, IOMode(WriteMode) )
import Data.Char (toLower)
import Data.Time.Clock ( getCurrentTime )
import Data.Time.Format (formatTime)
import Data.Maybe () -- para o isJust 
import Data.List (isPrefixOf)
import Data.Time
import Data.Time.Calendar.WeekDate ()
import Data.List (isInfixOf)
import System.IO (IOMode(..), hPutStrLn, withFile)


main :: IO ()
main = do
  conteudo <- readFile "Acervo.txt"
  let linhas = lines conteudo
      informacoes = map (splitOn ';') linhas
  menuPrincipal informacoes


-- MENUS

menuPrincipal :: [[String]] -> IO ()
menuPrincipal informacoes = do
  putStrLn "╔════════════════════════════════════════╗"
  putStrLn "║               BEM-VINDO                ║"
  putStrLn "║                   À                    ║"
  putStrLn "║          BIBLIOTECA MUNICIPAL          ║"
  putStrLn "╠════════════════════════════════════════╣"
  putStrLn "║ 1. Usuário                             ║"
  putStrLn "║ 2. Administrador                       ║"
  putStrLn "║ 3. Sair                                ║"
  putStrLn "╚════════════════════════════════════════╝"

  opcaoStr <- getLine
  let opcao = read opcaoStr :: Int

  case opcao of
    1 -> menuUsuario informacoes
    2 -> do
        loginSucesso <- fazerLogin
        if loginSucesso
          then menuAdministrador informacoes
           else do
            menuPrincipal informacoes

    3 -> putStrLn "Encerrando o programa..."
    _ -> do
     putStrLn "Opção inválida."
     menuPrincipal informacoes

menuUsuario :: [[String]] -> IO ()
menuUsuario informacoes = do
  putStrLn "╔════════════════════════════════════════╗"
  putStrLn "║             MENU USUÁRIO               ║"
  putStrLn "╠════════════════════════════════════════╣"
  putStrLn "║ Escolha uma opção:                     ║"
  putStrLn "║ 1. Pesquisar Livro                     ║"
  putStrLn "║ 2. Devolver Livro                      ║"
  putStrLn "║ 3. Ver Meus Livros Reservados          ║"
  putStrLn "║ 4. Ver Livros Alugados                 ║"
  putStrLn "║ 5. Listar Todos os Livros Disponiveis  ║"
  putStrLn "║ 6. Voltar ao Menu Principal            ║"
  putStrLn "╚════════════════════════════════════════╝"

  putStrLn "Digite o número da opção desejada (1, 2, 3, 4, 5 ou 6):"
  opcaoStr <- getLine
  let opcao = read opcaoStr :: Int

  case opcao of
    1 -> menuPesquisar informacoes
    2 -> menuDevolver informacoes
    3 -> menuLivrosReservados informacoes
    4 -> do
      exibirEmprestimos informacoes
      putStrLn "Deseja voltar ao Menu do Usuário? (S/N)"
      opcao <- getLine
      if opcao == "S" || opcao == "s"
        then menuUsuario informacoes
        else putStrLn "Volte sempre!"
    5 -> do
      exibirLivrosDisponiveis informacoes
      putStrLn "Deseja voltar ao Menu principal? (S/N)"
      opcao <- getLine
      if opcao == "S" || opcao == "s"
        then menuPrincipal informacoes
        else putStrLn "Volte sempre!"
    6 -> menuPrincipal informacoes
    _ -> do
      putStrLn "Opção inválida."
      menuUsuario informacoes

menuPesquisar :: [[String]] -> IO ()
menuPesquisar informacoes = do
  putStrLn "╔═══════════════════════════════════════╗"
  putStrLn "║            MENU PESQUISAR             ║"
  putStrLn "╠═══════════════════════════════════════╣"
  putStrLn "║ Escolha uma opção:                    ║"
  putStrLn "║ 1. Título                             ║"
  putStrLn "║ 2. Ano de Publicação                  ║"
  putStrLn "║ 3. Autor                              ║"
  putStrLn "║ 4. Categoria                          ║"
  putStrLn "║ 5. Voltar ao Menu Usuário             ║"
  putStrLn "╚═══════════════════════════════════════╝"

  putStrLn "Digite o número da informação desejada (1, 2, 3, 4 ou 5):"
  selecionadaStr <- getLine
  let selecionada = read selecionadaStr :: Int

  putStrLn "Informações do Acervo:"
  exibirInformacoes informacoes selecionada

  case selecionada of
    1 -> do
      let loop = do
            putStrLn "Digite o título do livro:"
            titulo <- getLine
            let encontrados = filter (\livro -> titulo `isPrefixOf` (head livro)) informacoes
            if null encontrados
              then do
                putStrLn "Nenhum livro encontrado com esse título."
                loop
              else do
                putStrLn "Livros encontrados:"
                mapM_ (putStrLn . unwords) encontrados
                putStrLn "Deseja reservar o livro encontrado? (S/N)"
                opcaoReserva <- getLine
                if opcaoReserva == "S" || opcaoReserva == "s"
                  then do
                    let livroReservado = head encontrados
                    let atualizados = reservarLivro livroReservado informacoes
                    writeFile "Acervo.txt" (unlines (map (intercalate ";") atualizados))
                    putStrLn "Livro reservado com sucesso!"
                    putStrLn "Deseja voltar ao Menu usuário? (S/N)"
                    opcao <- getLine
                    if opcao == "S" || opcao == "s"
                      then menuUsuario informacoes
                      else do
                        putStrLn "Volte sempre!"
                else do
                  putStrLn "Reserva não realizada."
                  putStrLn "Deseja voltar ao Menu usuário? (S/N)"
                  opcao <- getLine
                  if opcao == "S" || opcao == "s"
                    then menuUsuario informacoes
                    else do
                      putStrLn "Volte sempre!"
                      loop
      loop

    2 -> do
      putStrLn "Digite o ano de publicação do livro:"
      ano <- fmap trim getLine
      let encontrados = filter (\livro -> matchYear ano (livro !! 2)) informacoes
      if null encontrados
        then putStrLn "Nenhum livro publicado nesse ano foi encontrado."
        else do
          putStrLn "Livros encontrados:"
          mapM_ (putStrLn . unwords) encontrados
          putStrLn "Deseja reservar algum dos livros encontrados? (S/N)"
          opcaoReserva <- getLine
          if opcaoReserva == "S" || opcaoReserva == "s"
            then do
              let livroReservado = head encontrados
              let atualizados = reservarLivro livroReservado informacoes
              writeFile "Acervo.txt" (unlines (map (intercalate ";") atualizados))
              putStrLn "Livro reservado com sucesso!"
              putStrLn "Deseja voltar ao Menu usuário? (S/N)"
              opcao <- getLine
              if opcao == "S" || opcao == "s"
              then menuUsuario informacoes
                 else do
                    putStrLn "Volte sempre!"
            else do
                putStrLn "Reserva não realizada."
                putStrLn "Deseja voltar ao Menu usuário? (S/N)"
                opcao <- getLine
                if opcao == "S" || opcao == "s"
                then menuUsuario informacoes
                   else do
                      putStrLn "Volte sempre!"


    3 -> do
       putStrLn "Digite o nome do autor:"
       autor <- getLine
       let encontrados = filter (\livro -> autor `isInfixOf` (livro !! 1)) informacoes
       if null encontrados
         then putStrLn "Nenhum livro encontrado desse autor."
         else do
           putStrLn "Livros encontrados:"
           mapM_ (putStrLn . unwords) encontrados
           putStrLn "Deseja reservar algum dos livros encontrados? (S/N)"
           opcaoReserva <- getLine
           if opcaoReserva == "S" || opcaoReserva == "s"
             then do
               let livroReservado = head encontrados
               let atualizados = reservarLivro livroReservado informacoes
               writeFile "Acervo.txt" (unlines (map (intercalate ";") atualizados))
               putStrLn "Livro reservado com sucesso!"
               putStrLn "Deseja voltar ao Menu usuário? (S/N)"
               opcao <- getLine
               if opcao == "S" || opcao == "s"
               then menuUsuario informacoes
                  else do
                     putStrLn "Volte sempre!"
             else do
                putStrLn "Reserva não realizada."
                putStrLn "Deseja voltar ao Menu usuário? (S/N)"
                opcao <- getLine
                if opcao == "S" || opcao == "s"
                then menuUsuario informacoes
                  else do
                     putStrLn "Volte sempre!"

    4 -> do
      putStrLn "Digite a categoria:"
      categoria <- getLine
      let encontrados = filter (\livro -> categoria `isInfixOf` (livro !! 3)) informacoes
      if null encontrados
        then putStrLn "Nenhum livro encontrado nessa categoria."
        else do
          putStrLn "Livros encontrados:"
          mapM_ (putStrLn . unwords) encontrados
          putStrLn "Deseja reservar algum dos livros encontrados? (S/N)"
          opcaoReserva <- getLine
          if opcaoReserva == "S" || opcaoReserva == "s"
            then do
              let livroReservado = head encontrados
              let atualizados = reservarLivro livroReservado informacoes
              writeFile "Acervo.txt" (unlines (map (intercalate ";") atualizados))
              putStrLn "Livro reservado com sucesso!"
              putStrLn "Deseja voltar ao Menu usuário? (S/N)"
              opcao <- getLine
              if opcao == "S" || opcao == "s"
              then menuUsuario informacoes
                 else do
                    putStrLn "Volte sempre!"
            else do
                putStrLn "Reserva não realizada."
                putStrLn "Deseja voltar ao Menu usuário? (S/N)"
                opcao <- getLine
                if opcao == "S" || opcao == "s"
                then menuUsuario informacoes
                  else do
                     putStrLn "Volte sempre!"
    5 -> menuUsuario informacoes
    _ -> do
      putStrLn "Opção inválida."
      menuPesquisar informacoes

menuAdministrador :: [[String]] -> IO ()
menuAdministrador informacoes = do
  putStrLn "╔════════════════════════════════════════╗"
  putStrLn "║          MENU ADMINISTRADOR            ║"
  putStrLn "╠════════════════════════════════════════╣"
  putStrLn "║ Selecione uma opção:                   ║"
  putStrLn "║ 1. Acervo                              ║"
  putStrLn "║ 2. Cadastrar livro                     ║"
  putStrLn "║ 3. Alterar livro                       ║"
  putStrLn "║ 4. Excluir Livro                       ║"
  putStrLn "║ 5. Gerar relatório                     ║"
  putStrLn "║ 6. Voltar ao Menu Principal            ║"
  putStrLn "╚════════════════════════════════════════╝"

  opcao <- getLine
  case opcao of
    "1" -> menuAcervo informacoes
    "2" -> cadastrarLivro informacoes
    "3" -> alterarLivro informacoes
    "4" -> excluirLivro informacoes
    "5" -> gerarRelatorio informacoes
    "6" -> menuPrincipal informacoes
    _ -> do
      putStrLn "Opção inválida."
      menuAdministrador informacoes

menuAcervo :: [[String]] -> IO ()
menuAcervo informacoes = do
  putStrLn "╔════════════════════════════════════════╗"
  putStrLn "║                 ACERVO                 ║"
  putStrLn "╠════════════════════════════════════════╣"
  putStrLn "║ Selecione uma opção:                   ║"
  putStrLn "║ 1. Todos os Livros                     ║"
  putStrLn "║ 2. Livros Disponíveis                  ║"
  putStrLn "║ 3. Livros Alugados                     ║"
  putStrLn "╚════════════════════════════════════════╝"

  opcao <- getLine
  case opcao of
    "1" -> exibirAcervo informacoes
    "2" -> do
      exibirLivrosDisponiveis informacoes
      putStrLn "Deseja voltar ao Menu do Administrador? (S/N)"
      opcao <- getLine
      if opcao == "S" || opcao == "s"
        then menuAdministrador informacoes
        else putStrLn "Volte sempre!"
    "3" -> do
      exibirEmprestimos informacoes
      putStrLn "Deseja voltar ao Menu do Usuário? (S/N)"
      opcao <- getLine
      if opcao == "S" || opcao == "s"
        then menuAdministrador informacoes
        else putStrLn "Volte sempre!"
    _ -> do
      putStrLn "Opção inválida."
      menuAdministrador informacoes

menuDevolver :: [[String]] -> IO ()
menuDevolver informacoes = do
  let livrosAlocados = filter (\livro -> livro !! 7 == "1") informacoes -- Filtra os livros da lista informações e os guarda na variável
  if null livrosAlocados
    then putStrLn "Nenhum livro está atualmente alocado."
    else do
      putStrLn " "
      putStrLn "Livros Alocados:"
      mapM_ (putStrLn . formatLivro) livrosAlocados -- Exibe os livros guardados na variável
      devolverLivroLoop livrosAlocados informacoes

devolverLivroLoop :: [[String]] -> [[String]] -> IO ()
devolverLivroLoop livrosAlocados informacoes = do
  putStrLn "Digite o nome do livro que você gostaria de devolver:"
  tituloLivro <- getLine
  let livroEncontrado = filter (\livro -> tituloLivro `isPrefixOf` (head livro)) livrosAlocados -- Filtra o livro desejado na lista de livros alocados
  if null livroEncontrado
    then do
      putStrLn "Livro não encontrado. Digite o nome do livro novamente."
      devolverLivroLoop livrosAlocados informacoes
    else do
      dataAtual <- getCurrentDay -- Obtém a data atual
      let livroDevolvido = head livroEncontrado
          dataDevolucao = formatTime defaultTimeLocale "%d/%m/%Y" dataAtual -- Formata a data atual no formato "dd/mm/aaaa"
          livroAtualizado = atualizarDataEmprestimo livroDevolvido (livroDevolvido !! 5) dataDevolucao -- Atualiza a data de devolução do livro
          livroAtualizadoStatus = atualizarStatusLivro livroAtualizado -- Atualiza o status do livro para "Disponível" (coluna 8 = 0)
          livroAtualizadoQuantidade = atualizarQuantidadeExemplaresDevolucao livroAtualizadoStatus -- Aumenta a quantidade de exemplares disponíveis (coluna 10)
          informacoesAtualizadas = atualizarLivros informacoes livroAtualizadoQuantidade -- Atualiza a lista de informações com o livro devolvido, o status atualizado e a quantidade de exemplares atualizada
      writeFile "Acervo.txt" (unlines (map (intercalate ";") informacoesAtualizadas))
      putStrLn "╔════════════════════════════════════════╗"
      putStrLn "║      Livro devolvido com sucesso!      ║"
      putStrLn "╚════════════════════════════════════════╝"
      verificaEmprestimo informacoesAtualizadas livroDevolvido
      putStrLn "Deseja voltar ao Menu usuário? (S/N)"
      opcao <- getLine
      if opcao == "S" || opcao == "s"
        then menuUsuario informacoesAtualizadas
        else do
          putStrLn "Volte sempre!"

menuLivrosReservados :: [[String]] -> IO ()
menuLivrosReservados informacoes = do
  let livrosReservados = filter (\livro -> length livro >= 8 && livro !! 7 == "2") informacoes
  if null livrosReservados
    then putStrLn "Nenhum livro está atualmente reservado."
    else do
      putStrLn "Livros Reservados:"
      mapM_ (putStrLn . head) livrosReservados
      putStrLn "Deseja alugar algum dos livros reservados? (S/N)"
      opcaoAluguel <- getLine
      if opcaoAluguel == "S" || opcaoAluguel == "s"
        then do
          putStrLn "Digite o título do livro que deseja alugar:"
          tituloAluguel <- getLine
          let livroAluguel = filter (\livro -> tituloAluguel `isPrefixOf` (head livro)) livrosReservados
          if null livroAluguel
            then putStrLn "Nenhum livro encontrado com esse título."
            else do
              dataAtual <- getCurrentDay
              let dataDevolucao = adicionarDias 15 dataAtual
                  dataDevolucaoFormatada = formatarData dataDevolucao
              putStrLn "╔════════════════════════════════════════╗"
              putStrLn $ "║ Data de empréstimo: " ++ formatarData dataAtual
              putStrLn $ "║ Data de devolução: " ++ dataDevolucaoFormatada
              putStrLn "╠════════════════════════════════════════╣"
              putStrLn "║       Livro alugado com sucesso!       ║"
              putStrLn "╚════════════════════════════════════════╝"
              let livroAtualizado = atualizarDataEmprestimo (head livroAluguel) (formatarData dataAtual) dataDevolucaoFormatada
              let livroAtualizadoQuantidade = atualizarQuantidadeExemplares livroAtualizado
              let livroAtualizadoQuantidadeEmprestimos = atualizarQuantidadeEmprestimos livroAtualizadoQuantidade
              let informacoesAtualizadas = atualizarLivros informacoes livroAtualizadoQuantidadeEmprestimos
              let informacoesAtualizadasComVerificacao = atualizarVerificacaoEmprestimo informacoesAtualizadas
              salvarInformacoesAtualizadas "Acervo.txt" informacoesAtualizadasComVerificacao
              putStrLn "Deseja voltar ao Menu usuário? (S/N)"
              opcao <- getLine
              if opcao == "S" || opcao == "s"
                then menuUsuario informacoes
                else putStrLn "Volte sempre!"
        else do
          putStrLn "Aluguel não realizado."
          putStrLn "Deseja voltar ao Menu usuário? (S/N)"
          opcao <- getLine
          if opcao == "S" || opcao == "s"
            then menuUsuario informacoes
            else putStrLn "Volte sempre!"


-- FUNÇÕES UTILIZADAS

cadastrarLivro :: [[String]] -> IO ()
cadastrarLivro informacoes = do
  putStrLn "Digite as informações do livro:"

  putStrLn "Título:"
  novoTitulo <- getLine

  putStrLn "Autor(es):"
  novosAutores <- getLine

  putStrLn "Publicação:"
  novaPublicacao <- getLine

  putStrLn "Categoria:"
  novaCategoria <- getLine

  putStrLn "Número de Páginas:"
  novoNumPaginas <- getLine

  putStrLn "Número de Exemplares:"
  novoNumExemplares <- getLine
 
  -- Monta a linha do livro com as novas informações
  let novoLivro = [novoTitulo, novosAutores, novaPublicacao, novaCategoria, novoNumPaginas, "00/00/00", "00/00/00", "0", novoNumExemplares, novoNumExemplares, "0"]

  -- Adiciona o livro às informações do acervo
  let informacoesAtualizadas = informacoes ++ [novoLivro]

  -- Salva as informações atualizadas diretamente no arquivo "acervoLivros.txt"
  withFile "acervoLivros.txt" AppendMode (\handle -> do
    hPutStr handle (intercalate ";" novoLivro)
    hPutStrLn handle ""
    )

  putStrLn "Livro cadastrado com sucesso!"

  -- Copia os dados do arquivo "acervoLivros.txt" para o arquivo "Acervo.txt"
  copiarArquivo "acervoLivros.txt" "Acervo.txt"

  menuPrincipal informacoesAtualizadas

excluirLivro :: [[String]] -> IO ()
excluirLivro informacoes = do
  putStrLn "Digite o título do livro a ser excluído:"
  titulo <- getLine

  -- Procura o livro pelo título
  let encontrado = filter (\livro -> titulo == head livro) informacoes

  if null encontrado then
    putStrLn "Livro não encontrado."
  else do
    putStrLn "Livro encontrado. Deseja realmente excluí-lo? (S/N)"
    resposta <- getLine

    if resposta `elem` ["S", "s"] then do
      let acervoAtualizado = filter (/= head encontrado) informacoes

      -- Atualiza o arquivo "acervoLivros.txt" com as informações do acervo atualizadas
      withFile "acervoLivros.txt" AppendMode (\handle -> do
        hPutStr handle (unlines (map (intercalate ";") acervoAtualizado))
        )

      putStrLn "Livro excluído com sucesso!"

      -- Copia os dados do arquivo "acervoLivros.txt" para o arquivo "Acervo.txt"
      copiarArquivo "acervoLivros.txt" "Acervo.txt"

      menuAdministrador acervoAtualizado
    else do
      putStrLn "Operação de exclusão cancelada."
      menuAdministrador informacoes

alterarLivro :: [[String]] -> IO ()
alterarLivro informacoes = do
  putStrLn "Digite o título do livro a ser alterado:"
  titulo <- getLine

  -- Procura o livro pelo título
  let encontrado = filter (\livro -> titulo == head livro) informacoes

  if null encontrado then
    putStrLn "Livro não encontrado."
  else do
    putStrLn "Livro encontrado. Digite as novas informações:"

    -- Solicita as novas informações do livro
    putStrLn "Título:"
    novoTitulo <- getLine

    putStrLn "Autor(es):"
    novosAutores <- getLine

    putStrLn "Publicação:"
    novaPublicacao <- getLine

    putStrLn "Categoria:"
    novaCategoria <- getLine

    putStrLn "Número de Páginas:"
    novoNumPaginas <- getLine

    putStrLn "Número de Exemplares:"
    novoNumExemplares <- getLine

    -- Monta a linha do livro com as novas informações
    let novoLivro = [novoTitulo, novosAutores, novaPublicacao, novaCategoria, novoNumPaginas, "00/00/00", "00/00/00", "0", novoNumExemplares, novoNumExemplares, "0"]

    -- Substitui o livro antigo pelo novo nas informações do acervo
    let acervoAtualizado = substituirLivro informacoes (head encontrado) novoLivro

    -- Atualiza o arquivo "acervoLivros.txt" com as informações do acervo atualizadas
    withFile "acervoLivros.txt" WriteMode (\handle -> do
      hPutStr handle (unlines (map (intercalate ";") acervoAtualizado))
      )

    putStrLn "Livro alterado com sucesso!"

    -- Copia os dados do arquivo "acervoLivros.txt" para o arquivo "Acervo.txt"
    copiarArquivo "acervoLivros.txt" "Acervo.txt"

  menuAdministrador informacoes


-- FUNÇÕES PARA GERAR "DOCUMENTOS"

exibirAcervo :: [[String]] -> IO ()
exibirAcervo informacoes = do
  putStrLn "Informações do Acervo:"
  putStrLn "---------------------"
  mapM_ imprimirLivro (tail informacoes) -- pra ignorar a primeira linha
  putStrLn ""
  menuAdministrador informacoes

imprimirLivro :: [String] -> IO ()
imprimirLivro livro = do
  putStrLn ("Título: " ++ head livro)
  putStrLn ("Autor(es): " ++ livro !! 1)
  putStrLn ("Publicação: " ++ livro !! 2)
  putStrLn ("Categoria: " ++ livro !! 3)
  putStrLn ("Número de Páginas: " ++ livro !! 4)
  putStrLn ("Quantidade de exemplares: " ++ livro !! 8)
  putStrLn ("Data de Empréstimo: " ++ livro !! 5)
  putStrLn ("Data de Devolução: " ++ livro !! 6)
  putStrLn ("Status: " ++ livro !! 7)
  putStrLn "---------------------"

gerarRelatorio :: [[String]] -> IO ()
gerarRelatorio acervo = do
  putStrLn "Relatório do Acervo:"
  putStrLn "--------------------"
  mapM_ imprimirRelatorio (tail acervo)
  putStrLn ""
  menuAdministrador acervo 

imprimirRelatorio :: [String] -> IO ()
imprimirRelatorio livro = do
  let titulo = head livro
      autor = livro !! 1
      genero = livro !! 3
      exemplares = livro !! 9
      emprestimos = livro !! 10

  putStrLn ("Título: " ++ titulo)
  putStrLn ("Autor: " ++ autor)
  putStrLn ("Gênero: " ++ genero)
  putStrLn ("Exemplares Disponíveis: " ++ exemplares)
  putStrLn ("Quantidade de Empréstimos: " ++ emprestimos)
  putStrLn "--------------------"

exibirEmprestimos :: [[String]] -> IO ()
exibirEmprestimos informacoes = do
  let emprestimos = filter (\livro -> livro !! 7 == "1") informacoes -- Filtra os livros emprestados
  if null emprestimos
    then putStrLn "Nenhum livro está atualmente emprestado."
    else do
      putStrLn "Livros Emprestados:"
      mapM_ (imprimirEmprestimo informacoes) emprestimos

imprimirEmprestimo :: [[String]] -> [String] -> IO ()
imprimirEmprestimo informacoes livro = do
  let titulo = head livro
      autores = livro !! 1
      publicacao = livro !! 2
      categoria = livro !! 3
      numPaginas = livro !! 4
      dataEmprestimo = livro !! 5
      dataDevolucao = livro !! 6
      situacao = livro !! 7

  putStrLn "--------------------"
  putStrLn $ "Título: " ++ titulo
  putStrLn $ "Autores: " ++ autores
  putStrLn $ "Publicação: " ++ publicacao
  putStrLn $ "Categoria: " ++ categoria
  putStrLn $ "Número de Páginas: " ++ numPaginas
  putStrLn $ "Data de Empréstimo: " ++ dataEmprestimo
  putStrLn $ "Data de Devolução: " ++ dataDevolucao
  putStrLn $ "Situação: " ++ situacao
  putStrLn "--------------------"
  -- Chama a função verificaEmprestimo para verificar atraso e imprimir mensagem/multa se houver
  verificaEmprestimo informacoes livro

-- Funções para exibir livros disponíveis
exibirLivrosDisponiveis :: [[String]] -> IO ()
exibirLivrosDisponiveis informacoes = do
  let livrosDisponiveis = filter (\livro -> livro !! 7 == "0") informacoes -- Filtra os livros Disponiveis
  if null livrosDisponiveis
    then putStrLn "Nenhum livro está atualmente disponível."
    else do
      putStrLn "Livros Disponíveis:"
      mapM_ imprimirLivroD livrosDisponiveis

imprimirLivroD :: [String] -> IO ()
imprimirLivroD livro = do
  putStrLn ("Título: " ++ head livro)
  putStrLn ("Autor(es): " ++ livro !! 1)
  putStrLn ("Publicação: " ++ livro !! 2)
  putStrLn ("Categoria: " ++ livro !! 3)
  putStrLn ("Número de Páginas: " ++ livro !! 4)
  putStrLn ("Quantidade de exemplares: " ++ livro !! 8)
  putStrLn "---------------------"


-- FUNÇÕES AUXILIARES
-- Função para copiar um arquivo para outro
copiarArquivo :: FilePath -> FilePath -> IO ()
copiarArquivo arquivoOrigem arquivoDestino = do
  conteudo <- readFile arquivoOrigem
  writeFile arquivoDestino conteudo

-- Função auxiliar para substituir um livro em uma lista de informações do acervo
substituirLivro :: [[String]] -> [String] -> [String] -> [[String]]
substituirLivro [] _ _ = []
substituirLivro (x:xs) livro novoLivro
  | x == livro = novoLivro : substituirLivro xs livro novoLivro
  | otherwise = x : substituirLivro xs livro novoLivro

exibirInformacoes :: [[String]] -> Int -> IO ()
exibirInformacoes informacoes opcao
  | opcao == 1 = do
      let selecionada = map (!! 0) informacoes
      putStrLn $ unlines selecionada
  | opcao == 2 = do
      let selecionada = map (\livro -> extractYear (livro !! 2)) informacoes
      putStrLn $ unlines selecionada
  | opcao == 3 = do
      let selecionada = map (!! 1) informacoes
      putStrLn $ unlines selecionada
  | opcao == 4 = do
      let selecionada = map (!! 3) informacoes
      putStrLn $ unlines selecionada
  | otherwise = putStrLn "Opção inválida."

-- Função auxiliar para dividir uma string por um delimitador
splitOn :: Eq a => a -> [a] -> [[a]]
splitOn delimiter = foldr f [[]]
  where
    f c l@(x:xs)
      | c == delimiter = []:l
      | otherwise = (c:x):xs
    f _ [] = error "splitOn: empty list"

-- Função para remover espaços em branco antes e depois de uma string
trim :: String -> String
trim = f . f
  where f = reverse . dropWhile isSpace
        isSpace = (`elem` [' ', '\t', '\n', '\r'])

-- Função para extrair o ano de uma string de data
extractYear :: String -> String
extractYear date
  | length parts == 4 = last parts
  | otherwise = last (words (last parts))
  where parts = splitOn ' ' date

-- Função para comparar o ano de publicação com um ano fornecido
matchYear :: String -> String -> Bool
matchYear year date = year `isInfixOf` extractYear date

-- Função para reservar um livro
reservarLivro :: [String] -> [[String]] -> [[String]]
reservarLivro livro acervo = replaceElementAt indiceLivro atualizado acervo
  where
    indiceLivro = getIndex livro acervo
    atualizado = replaceElementAt 7 "2" (head livro : drop 1 livro)

-- Função para devolver um livro
devolverLivro :: [String] -> [[String]] -> [[String]]
devolverLivro livro acervo = replaceElementAt indiceLivro atualizado acervo
  where
    indiceLivro = getIndex livro acervo
    atualizado = replaceElementAt 7 "0" (head livro : drop 1 livro)

-- Função para substituir um elemento em uma lista pelo índice
replaceElementAt :: Int -> a -> [a] -> [a]
replaceElementAt _ _ [] = []
replaceElementAt i y (x:xs)
  | i == 0 = y:xs
  | otherwise = x:replaceElementAt (i-1) y xs

-- Função para obter o índice de um livro em uma lista de livros
getIndex :: [String] -> [[String]] -> Int
getIndex livro acervo = case elemIndex livro acervo of
  Just index -> index
  Nothing -> error "Índice não encontrado"

getCurrentDay :: IO Day
getCurrentDay = utctDay <$> getCurrentTime

adicionarDias :: Integer -> Day -> Day
adicionarDias numDias dataAtual = addDays numDias dataAtual

atualizarDataEmprestimo :: [String] -> String -> String -> [String]
atualizarDataEmprestimo livro dataEmprestimo dataDevolucao = take 5 livro ++ [dataEmprestimo, dataDevolucao] ++ drop 7 livro

atualizarLivros :: [[String]] -> [String] -> [[String]]
atualizarLivros informacoes livroAtualizado = map (\livro -> if head livro == head livroAtualizado then livroAtualizado else livro) informacoes

-- Função para atualizar o status do livro para disponível (coluna 8)
atualizarStatusLivro :: [String] -> [String]
atualizarStatusLivro livro = take 7 livro ++ ["0"] ++ drop 8 livro

atualizarVerificacaoEmprestimo :: [[String]] -> [[String]]
atualizarVerificacaoEmprestimo = map (\livro -> if livro !! 7 == "2" then atualizarVerificacaoLivro livro else livro)

atualizarVerificacaoLivro :: [String] -> [String]
atualizarVerificacaoLivro livro = take 7 livro ++ ["1"] ++ drop 8 livro

salvarInformacoesAtualizadas :: FilePath -> [[String]] -> IO ()
salvarInformacoesAtualizadas arquivo informacoes = do
  let conteudo = unlines (map (intercalate ";") informacoes)
  writeFile arquivo conteudo

formatarData :: Day -> String
formatarData = formatTime defaultTimeLocale "%d/%m/%Y"

-- Verifica se há atraso na data de devolução e calcula a multa
verificaEmprestimo :: [[String]] -> [String] -> IO ()
verificaEmprestimo informacoes livro = do
  let titulo = head livro
      dataEmprestimo = livro !! 5
      dataDevolucao = livro !! 6

  let dataDevolucaoFmt = parseTimeOrError True defaultTimeLocale "%d/%m/%Y" dataDevolucao :: Day
      dataDevolucaoLimite = addDays 15 (parseTimeOrError True defaultTimeLocale "%d/%m/%Y" dataEmprestimo :: Day)
      atrasoDias = diffDays dataDevolucaoFmt dataDevolucaoLimite
      multa = if atrasoDias > 0 then 5.0 + (1.5 * fromIntegral (atrasoDias - 1)) else 0.0

  if atrasoDias > 0 -- São cinco reais caso atrase + 1,50R$ para cada dia de atraso após o primeiro
    then do
      putStrLn " "
      putStrLn "╔════════════════════════════════════════╗"
      putStrLn $ "║  Atraso na devolução do livro:" ++ show titulo
      putStrLn "╠════════════════════════════════════════╣"
      putStrLn $ "║ Sua multa é de: R$" ++ show multa ++ replicate (32 - length (show multa)) ' '
      putStrLn "╚════════════════════════════════════════╝"
      putStrLn " "
    else putStrLn ""

formatLivro :: [String] -> String
formatLivro livro =
  let titulo = head livro
      autores = livro !! 1
      publicacao = livro !! 2
      categoria = livro !! 3
      numPaginas = livro !! 4
      dataEmprestimo = livro !! 5
      dataDevolucao = livro !! 6
      situacao = livro !! 7
  in
    unlines [ "--------------------"
            , "Título: " ++ titulo
            , "Autores: " ++ autores
            , "Publicação: " ++ publicacao
            , "Categoria: " ++ categoria
            , "Número de Páginas: " ++ numPaginas
            , "Data de Empréstimo: " ++ dataEmprestimo
            , "Data de Devolução: " ++ dataDevolucao
            , "Situação: " ++ situacao
            , "--------------------"
            ]

-- Usada para diminuir a quantidade de exemplares
atualizarQuantidadeExemplares :: [String] -> [String]
atualizarQuantidadeExemplares livro =
  let quantidadeExemplares = read (livro !! 9) :: Int
      novaQuantidadeExemplares = quantidadeExemplares - 1
  in take 9 livro ++ [show novaQuantidadeExemplares] ++ drop 10 livro

-- Aumenta 1 na coluna de vezes que o livro foi emprestado
atualizarQuantidadeEmprestimos :: [String] -> [String]
atualizarQuantidadeEmprestimos livro =
  let quantidadeEmprestimos = read (livro !! 10) :: Int
      novaQuantidadeEmprestimos = quantidadeEmprestimos + 1
  in take 10 livro ++ [show novaQuantidadeEmprestimos] ++ drop 11 livro

atualizarQuantidadeExemplaresDevolucao :: [String] -> [String]
atualizarQuantidadeExemplaresDevolucao livro =
  let quantidadeExemplares = read (livro !! 9) :: Int
      novaQuantidadeExemplares = quantidadeExemplares + 1
  in take 9 livro ++ [show novaQuantidadeExemplares] ++ drop 10 livro
-- FUNÇÃO PARA LOGIN DO ADM
fazerLogin :: IO Bool
fazerLogin = do
  putStrLn "Nome de usuário: "
  username <- getLine
  putStrLn "Senha: "
  password <- getLine
  -- Verificar se as credenciais estão corretas
  if username == "adm" && password == "123" then do
    putStrLn "Login bem-sucedido!"
    return True
  else do
    putStrLn "Login inválido. Acesso negado."
    return False
