Funcionalidade: Adição de Nova Tarefa

  Cenário: Adicionar uma nova tarefa sem descrição
    Dado que estou na página de adição de tarefas
    Quando eu preencho o campo "Título" com "Tarefa Importante"
    E eu não preencho o campo de descrição
    E eu defino o prazo para a tarefa para "2024-02-15"
    E eu clico no botão de adicionar tarefa
    Então a nova tarefa "Tarefa Importante" deve ser exibida na lista de tarefas pendentes

  Cenário: Adicionar uma nova tarefa com descrição
    Dado que estou na página de adição de tarefas
    Quando eu preencho o campo "Título" com "Reunião de Equipe"
    E eu preencho o campo de descrição com "Discutir planos para o próximo projeto"
    E eu defino o prazo para a tarefa para "2024-02-20"
    E eu clico no botão de adicionar tarefa
    Então a nova tarefa "Reunião de Equipe" deve ser exibida na lista de tarefas pendentes

  Cenário: Adicionar uma nova tarefa com prazo vencido
    Dado que estou na página de adição de tarefas
    Quando eu preencho o campo "Título" com "Enviar Relatório Mensal"
    E eu não preencho o campo de descrição
    E eu defino o prazo para a tarefa para "2023-12-31"
    E eu clico no botão de adicionar tarefa
    Então a nova tarefa "Enviar Relatório Mensal" deve ser exibida na lista de tarefas pendentes
    E deve haver uma indicação visual de que a tarefa está atrasada

  Cenário: Adicionar uma nova tarefa sem prazo definido
    Dado que estou na página de adição de tarefas
    Quando eu preencho o campo "Título" com "Tarefa Sem Prazo"
    E eu não preencho o campo de descrição
    E eu não defino um prazo para a tarefa
    E eu clico no botão de adicionar tarefa
    Então a nova tarefa "Tarefa Sem Prazo" deve ser exibida na lista de tarefas pendentes

  Cenário: Tentar adicionar uma tarefa sem título
    Dado que estou na página de adição de tarefas
    Quando eu não preencho o campo "Título"
    E eu não preencho o campo de descrição
    E eu defino o prazo para a tarefa para "2024-02-28"
    E eu clico no botão de adicionar tarefa
    Então uma mensagem de erro deve ser exibida indicando que o título é obrigatório
    E a nova tarefa não deve ser adicionada à lista de tarefas pendentes
