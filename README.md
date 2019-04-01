# Linux-Virus-E-RootKits
Breve descrição sobre virus em Linux

Uma das questões em que muitas pessoas ainda tem conceitos com base em desinformação é
sobre os vírus para Linux. Tentarei ser breve e rápido em descrever e desmitificar isso.

Tem um sistema operacional (hahahahahahaha. Não ria, é feio!) de tela azul que atualmente
deve estar na versão 10 ou 10.x, que é o mais suscetível a ser infectado por vírus. Esse sistema, é
especialista nisso. Mas vamos discorrer um pouco sobre isso.

Primeiro dizem que só porque ele é o mais utilizado e por isso é mais “visado”. Segundo dizem
que é uma forma de garantir o mercado de anti-virus, uma vez que o desenvolvedor proprietário
desse sistema tem acordos de longa data com os desenvolvedores dessas ferramentas.

Vamos falar então sobre esses dois pontos.

Ser o mais “visado” não é necessariamente o motivo principal, mas é uma variável a ser
considerada. No real é a estrutura básica do sistema que permite ser exploradas suas
vulnerabilidades (um detalhe: não existe sistema cem por cento invulnerável).

A forma de lidar como o modo multiusuário é meio porco (tá bom, tá bom. É muito porco),
permitindo que o usuário principal do sistema tenha os privilégios (na nomenclatura dele) de
administrador para todas as tarefas, desde as corriqueiras até as realmente administrativas.

Aliado a isso, a forma como o mesmo instala programas é bem simplória: o famoso NNF, ou
Next Next Finish.

Sobre o mercado de anti-virus, foi feito com o decorrer dos anos um monte de acordos para que
os desenvolvedores dessas ferramentas fizessem o trabalho de fornecer o melhor possível, em
matéria de software, para proteção do sistema operacional em questão. Até agora estão conseguindo
até que mais ou menos bem, cumprir essa missão. Muitas vezes não conseguem mesmo, mas aí é
outra estória.

Mas vamos deixar de lado esse sistema que é um pool, um repositório infinito, um “buraco
negro” de coleta e uso de vírus.

É sobre vírus para Linux que pretendo falar rapidamente. O assunto é bem mais complexo,
portanto deixarei algumas fontes/links no final para referências e melhores estudos.

Mitos E Verdades sobre Linux Ter Vírus

Existem vários mitos sobre Linux ter ou não vírus e se ele é infectado ou não.
Obs: uma falácia ou mito, é que uma vez que o Linux não tem tantos usuários assim, então
não tem vírus para ele.

Primeiro: sim existem vírus para Linux
Segundo: não é assim tão simples uma infecção em Linux.
Pronto, resolvido.
Ah, não? Ah tá!! Vamos descrever então, um pouco sobre cada um dos pontos acima.

Primeiro item: existem vírus para Linux sim. Não tenho os dados de quantidade, mas existem
sim. E parece não ser poucos. Mas tem alguns detalhes a serem considerados (sempre tem). A
probabilidade de um sistema Linux ser infectado por vírus são muito baixas.

Segundo item: você teria que facilitar muito e até mesmo permitir algo do tipo: vírus, pode
entrar no sistema e infectar o que der!!O sistema é multiusuário, mas a forma como lida com seus usuários é bem mais criteriosa. Na
instalação do sistema, é solicitado que crie um usuário padrão, com poucos privilégios sobre o
sistema, para que possa trabalhar sem permissões de administrador, ops, ou melhor, Root. Com isso,
o local de acesso desse usuário fica restrito ao seu próprio diretório “home’. Ex: /home/usuario

Quanto necessitar instalar ou fazer alterações no sistema, haverá uma solicitação de senha do
usuário root, que é gerada no processo da instalação.

Com isso, a instalação de novas aplicações/programas e alterações nas configurações do
sistema, ficam um pouco mais restritas. Diminuindo a possibilidade de falhas e/ou instalação de
softwares maliciosos.

Em Linux existem várias formas de se instalar programas: os repositórios de softwares das
distribuições, pacotes pré-compilados e os sources ou códigos fontes, para compilação na máquina
local. O mais comum atualmente são os repositórios de softwares.

Um exemplo de repositório Debian:

deb http://ftp.br.debian.org/debian stable main contrib non-free

O repositório normalmente, estão alocados nos servidores da distribuição (mas pode ser local
também, mas aí é uma outra estória, mas segue a mesa lógica). São mantidos pelos
desenvolvedores, que também são tanto do projeto Debian, quanto desenvolvedores voluntários,
que participam do projeto.

Esse modelo é muito utilizado em quase todas as distros (distribuições Linux) que existem. Isso
também permite um controle mais apurado da qualidade e segurança dos pacotes de softwares.

Claro que já houve situações em que, devido a alguma invasão ou até mesmo brechas de
seguranças, os repositórios ficaram comprometidos com software malicioso. Um evento desse tipo
que me lembro foi com o pessoal do Linux Mint, uma distribuição baseada em Debian e Ubuntu.

Mas o que ficou comprometido foram as imagens ISO de instalação do sistema e não o repositório
dos softwares. Mesmo assim foi complicado para o pessoal do Linux Mint, mas também foi
relativamente rápido e eficiente a solução. Coisa que acontece quase nunca com o sistema de tela
azul.

Nesse caso não foram vírus e sim invasão dos servidores, inclusão de códigos/softwares
maliciosos nos arquivos de imagem ISO de instalação do sistema. O que pode ser algo similar.

Mas vamos então falar um pouco sobre algo que realmente é grave em Linux, os tais rootkits.
Não é tão diferente de se “infectar” com um rootkit.

Rootkit:
é um software malicioso que permite o acesso a um computador enquanto oculta a sua atividade.
Originalmente o rootkit era uma coleção de ferramentas que habilitavam acesso a nível de
administrador para um computador ou uma rede. Uma das propostas desse programa é o uso para
ocultar específicos processos e arquivos para algumas partes do sistema.

Comportamento:
O malware se integra a partes do sistema operacional para que não seja possível fazer a leitura do
mesmo no disco rígido do computador. Assim dando a impressão que o mesmo não existe. Desta
forma, sistema de segurança e proteção do computador, por exemplo, antivirus, não conseguem ler
o código do software malicioso para efetuar testes de detecção e identificar ameaças. Outra função
comum é camuflar seu processo de execução fazendo rodar como uma thread em algum processo
essencial do sistema, como comando ls ou ps do Linux, não podendo ser visualizado como um
arquivo ou processo do sistema.

Detalhe: Uma das formas de se infectar com rootkit, pode ser por algum programa pré-
compilado fora dos repositórios ou pelos sources. Não é assim algo muito comum. Outra forma,
seria por alguma via de invasão do sistema. Distros desatualizadas com falhas de segurança e/ou
com configuração padrão, são propícias a “infecções”.Nestes casos, uma das ferramentas mais utilizadas para detecção de rootkits é o chkrootkit.

Pode-se instalar tanto pelo source (código fonte) ou pelo repositório.
Por exemplo, no Debian, como root: apt-get install chkrootkit

No site do desenvolvedor do chkrookit, tem a documentação de instalação e utilização do
programa.

Testando Alguns Scripts

Então vamos fazer alguns experimentos simples para ver quanto de estrago poderemos causar.

Reforçando que a idéia aqui é fazer alguns testes e com isso ter o hábito de se ter alguns
cuidados simples ao lidar com scripts e/ou pacotes de aplicativos/programas de terceiros.

Fiz alguns scripts pequenos que causam um certo contratempo na utilização do sistema. Não
são nada de mais, mas que podem ser problemáticos se utilizados com objetivo de causar danos
reais. Portanto use com cautela e de forma alguma utilize para prejudicar pessoas. Não é esse o
objetivo desse texto/artigo.

Ferramentas utilizadas:

Primeiro Script:
Sistema Operacional: Linux Ubuntu Mate 18.10 x64, rodando no VirtualBox. Pode ser utilizado
via Live/DVD ou pendrive bootavel.

Alertando: Não utilize os scripts em ambientes de produção. Somente em ambientes de teste.

Aplicações adicionais: fortune e xcowsay – instaladas via apt-get, pelo script “pseudo-virus”.

Procedimento: o script “libera-a-vaca”, trava com mensagens do fortune e xcowsay no ambiente
gráfico - usa root na instalação e rodando em background pra ferrar de vez com tudo. Esse script
grava o comando de repetição em loop no arquivo .bashrc do usuário comum e do root. Com isso,
toda vez que o terminal for aberto, ele chama novamente o fortune e xcowsay, gerando mais um
processo em background. A reação normal é tentar abrir um terminal, chamar o sudo su para tentar
parar os processo. Mas como a linha de loop está no bashrc, ela gera um novo processo, joga em
background e sai do login root. Legal né. Fiz um pacote .deb para instalar via dpkg e um script para
rodar direto no terminal. Para cada situação o script está escrito com alguns detalhes diferentes para
se instalar, mas no final o resultado é o mesmo. Para parar o processo, fiz o script “limpa-vaca”,
que remove os pacotes fortune e xcowsay. De forma manual, é necessário parar os processos
gerados e em background. Depois de reiniciar o sistema, o mais provável é que tudo volte ao
normal como antes.

Obs 0: fiz os testes somente no modo livedvd do ubuntu mate, o que faz que perca todas as
informações e configurações. Mesmo assim, evite fazer os testes em máquinas e sistema em
produção.

Segundo Script:
Sistema Operacional: Linux Ubuntu Mate 18.10 x64, rodando no VirtualBox. Pode ser utilizado
via Live/DVD ou pendrive bootavel.

Alertando: Não utilize os scripts em ambientes de produção. Somente em ambientes de teste.

Procedimento: o script utiliza comandos nativos do bash e algumas funções básicas para facilitar o
estrago. Move arquivos e diretórios do home do usuário para tmp, deixando-os ocultos e mudando
para nomes aleatórios utilizando a variável de ambiente $RANDOM, que serão substituídos por
números. Variações do mesmo script para poder mover e apagar arquivos aleatórios e com sleep
ininterruptos, dificultado encerrar o processo ou processos gerados.

Os códigos fontes dos scripts e o pacote .deb, estão no github.Reforçando e Relembrando:

Mesmo estes scripts sendo simples, relativamente inofensivos, não deve-se utilizar para causar
danos à terceiros. Servem somente para fins didáticos. De forma alguma devem utilizados para
outros fins, que possam causar danos à terceiros. Utilize com responsabilidade e em ambiente
controlado.

Existem outros tipos de scripts e/ou comandos que causam diversos transtornos em sistema
UNIX/Linux. Uma busca no Google por “comandos perigosos em linux” retorna uma enorme
quantidade de sites com as informações solicitadas.

Nenhum desses scripts que fiz, tem as características típicas ou conceituais dos virus de
computadores. Tem somente um esboço dos conceitos, mas mesmo assim, podem causar danos,
contratempos e com alguns ajustes nos códigos pode-se deixar os scripts com mais características
de variantes de vírus.

Portanto, em sistemas UNIX/Linux, o maior causador de problemas é o vírus conhecido como
usuário. Esse sim, pode causar estragos em escalas imensuráveis. E na maioria das vezes sem ser
forma intencional.
Conclusão:

Linux pode se infectar com vírus? Sim! Como eu mencionei anteriormente, não é um sistema
invulnerável. Mas a probabilidade de se pegar é muito baixa e não é algo tão simples assim. Está
um tanto quanto paranóico? Configure seu firewall, que por um não acaso do universo, em Linux
funciona sim. Tente acompanhar os changelogs dos desenvolvedores da sua distro. Utilize
repositórios oficiais, que tenham uma boa manutenção e atenção de segurança. Claro, que não é
necessário excluir, por excesso de zelo, outros repositórios ou os pacotes .deb ou de outro formato
de sua distro. Só precisa dar uma lida na documentação dos pacotes, que normalmente tende a ser
bem completa.

Outro detalhe, por mais eficiente e próximo da perfeição que seja o Linux ou qualquer outro
sistema operacional, existe uma imperfeição que talvez passe despercebido: o usuário.

Em Linux, boa parte de seus usuários tem um conhecimento técnico bem mais apurado do que
de outros sistemas não UNIX LIKE. Tendem a aprender mais sobre o sistema. Uma vez que Linux
lhe dá poder absoluto de utilização, seu conhecimento sobre ele tende a ser mais alto também. Mas
como tudo na existência possui exceções, aqui não seria diferente. Pode sim, e já (constatei essa
situação), usuário utilizando Linux e fazendo as mesmas “maravilhas técnicas” que se faz no
sistema de tela azul, com um pequeno detalhe: os estragos são extremamente maiores e mais
duradouros.

Até mais.

Vídeo no YouTube: https://youtu.be/wGdFoOsykA0
Link Artigo: http://www.mariomedeiros.eti.br/artigos/index.php?article48/virus-linux-e-rootkits
Link Medium: https://medium.com/@m4r10m/virus-linux-e-rootkits-8036ce5a426b

Algumas Referências e Links:
https://www.diolinux.com.br/2014/02/por-que-linux-android-nao-pega-virus.html
https://wiki.debian.org/configura%C3%A7%C3%A3o%20repositorios%20PT%20BR
https://en.wikipedia.org/wiki/Linux_malware
https://pt.wikipedia.org/wiki/Rootkit
https://pt.wikipedia.org/wiki/F.I.R.E
http://www.chkrootkit.org/
A referência sobre a infecção do ISO Linux Mint, que ocorreu em 20 de Fevereiro 2016, está em:
https://pplware.sapo.pt/linux/atencao-linux-mint-pode-estar-infectado/

Mario Medeiros

2019-02-22 – 15:31h.
