object frmHelp2: TfrmHelp2
  Left = 605
  Top = 12
  AutoScroll = False
  Caption = 'Consulta Notas Fiscais Destinadas'
  ClientHeight = 780
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 4
    Top = 0
    Width = 870
    Height = 763
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      ''
      ''
      
        '     Ester servi'#231'o permite consultar a  Rela'#231#227'o de Documentos (N' +
        'F-e, Cancelamentos, CC-e, ...) Destinados  '
      
        'a um  determinado CNPJ de destinat'#225'rio informado na NF-e. Deve s' +
        'er consumido por destinat'#225'rio de NF-e, '
      
        'Pessoa Jur'#237'dica, que possua  um certificado digital de PJ com o ' +
        'seu CNPJ base. '
      ''
      ''
      'Nesse m'#233'todo s'#227'o passados 3 par'#226'metros:'
      ''
      
        '1. Indicador NF-e -  serve para indicar as notas fiscais que des' +
        'eja consultar. Permite 3 valores:'
      ''
      '                 '#183' 0 = todas as Chaves de Acesso do per'#237'odo;'
      
        '                 '#183' 1 = somente as Chaves de Acesso sem manifesta' +
        #231#227'o final do destinat'#225'rio;'
      
        '                 '#183' 2 = somente as Chaves de Acesso sem manifesta' +
        #231#227'o final do destinat'#225'rio e sem Ci'#234'ncia da Opera'#231#227'o;'
      ''
      ''
      
        '2. Indicador de Emissores - serve para indicar as notas fiscais ' +
        'de que emissores deseja consultar. Permite 2 valores:'
      ''
      '                 '#183' 0 = todos os emitentes;'
      
        '                 '#183' 1 = somente as NF-e emitidas por emissores qu' +
        'e n'#227'o tenham a mesma raiz do CNPJ do destinat'#225'rio;'
      ''
      ''
      
        '3. ultNSU - representa a numera'#231#227'o '#250'nica da NF-e dentro do ambie' +
        'nte que est'#225' sendo consultado. Se estiver sendo'
      
        '  consultado o AN, este ser'#225' o valor do NSU_RFB. Se tiver sendo ' +
        'consultada uma determinada SEFAZ, este ser'#225' o '
      'valor  do  NSU_SEFAZ_XX.'
      ''
      ''
      
        'A aplica'#231#227'o cliente deve manter o valor do '#250'ltimo n'#250'mero sequenc' +
        'ial '#250'nico - ultNSU que possui e informar nessa '
      
        'consulta.Caso o ultNSU seja informado com 0 (zero), o WS far'#225' a ' +
        'consulta a partir da primeira nota fiscal recepcionada '
      
        'h'#225' menos de 15 dias ou outro prazo maior que a UF entender conve' +
        'niente.'
      ''
      ''
      
        'O Web Service poder'#225' gerar lotes com at'#233' 50 Resumos de documento' +
        's destinados ao CNPJ consultado quetenham o '
      
        'n'#250'mero sequencial '#250'nico - NSU superior ao NSU informado. Caso o ' +
        'NSU informado seja menor que o primeiro NSU '
      
        'dispon'#237'vel para consulta, a aplica'#231#227'o da SEFAZ deve come'#231'ar a fo' +
        'rnecer a rela'#231#227'o de Chaves de Acesso a partir do primeiro '
      'documento dispon'#237'vel para consulta.'
      ''
      ''
      ''
      'O retorno do m'#233'todo pode trazer os seguintes resultados:'
      ''
      
        #183' Rejei'#231#227'o - com a devolu'#231#227'o da mensagem com o motivo da falha i' +
        'nformado no cStat;'
      ''
      
        #183' Nenhum documento localizado -  n'#227'o existe documentos fiscais p' +
        'ara o CNPJ informado cStat="137-Nenhum  '
      'documento localizado para o destinat'#225'rio";'
      ''
      
        #183' Documento localizado - com a devolu'#231#227'o das informa'#231#245'es de resu' +
        'mo de documentos encontrados - cStat="138-'
      'Documento localizado  para o destinat'#225'rio".'
      ''
      
        'A empresa dever'#225' aguardar um tempo m'#237'nimo de 1 hora para efetuar' +
        ' uma nova solicita'#231#227'o de'
      
        'distribui'#231#227'o, caso receba a indica'#231#227'o que n'#227'o existem mais docum' +
        'entos a serem pesquisados na'
      'base de dados da SEFAZ (indCont=0).'
      ''
      ''
      ''
      'Recomenda'#231#245'es para evitar o uso indevido:'
      ''
      
        'A an'#225'lise do comportamento atual das aplica'#231#245'es das empresas ("a' +
        'plica'#231#227'o cliente") permite'
      
        'identificar algumas situa'#231#245'es de "uso indevido" do ambiente de a' +
        'utoriza'#231#227'o de Nota Fiscal Eletr'#244'nica,'
      'mantidos pelas SEFAZ.'
      ''
      
        'Como exemplo maior do mau uso do ambiente de autoriza'#231#227'o, ressal' +
        'ta-se a falta de controle de'
      
        'algumas aplica'#231#245'es que entram em "loop", consumindo recursos de ' +
        'forma indevida, sobrecarregando'
      'principalmente o canal de comunica'#231#227'o com a Internet.'
      ''
      
        'Para este Web Service de Consulta as opera'#231#245'es destinadas, ser'#227'o' +
        ' mantidos controles para'
      
        'identificar as situa'#231#245'es de uso indevido de sucessivas tentativa' +
        's de busca de registros j'#225
      'disponibilizados anteriormente.'
      ''
      
        'As novas tentativas ser'#227'o rejeitadas com o erro "641-Rejei'#231#227'o: C' +
        'onsumo Indevido".'
      ''
      ''
      ''
      ''
      'Recomenda'#231#245'es do SEFAZ:'
      ''
      
        'Recomendado que o banco de dados consultado seja distinto do ban' +
        'co de dados de NF-e'
      
        'autorizadas para n'#227'o comprometer o desempenho do Servi'#231'o de Auto' +
        'riza'#231#227'o da NF-e.'
      ''
      
        'Sugerida a cria'#231#227'o de uma tabela com pelo menos as seguintes inf' +
        'orma'#231#245'es:'
      ''
      #183' NSU - N'#250'mero Sequencial '#218'nico, IDENTITY da tabela;'
      ''
      #183' Tipo de documento - NF-e, Cancelamento, Evento de CC-e;'
      ''
      
        #183' Data recebimento do Documento - data de inser'#231#227'o da NF-e, Canc' +
        'elamento ou CC-e na tabela, ser'#225
      ' utilizado para limitar o escopo da consulta no prazo definido;'
      ''
      
        #183' Identifica'#231#227'o do Emitente: UF, CNPJ/CPF, IE; Nome/Raz'#227'o Social' +
        ';'
      ''
      
        #183' Identifica'#231#227'o do Destinat'#225'rio/Remetente: UF, CNPJ/CPF, IE; Nom' +
        'e/Raz'#227'o Social;'
      ''
      #183' chNFe - Chave de Acesso da NF-e;'
      ''
      #183' Dados da NF-e ou do Cancelamento'
      
        '       a - dEmi: Data de emiss'#227'o da NF-e ou do Cancelamento da N' +
        'F-e;'
      '       b - tpNF: Tipo do Documento Fiscal: 0=Entrada; 1=Sa'#237'da;'
      
        '       c - finNFe: Finalidade da NF-e: 1=NF-e Normal; 2=NF-e Com' +
        'plementar; 3=NF-e Ajuste.'
      '       d - DigestValue: DigestValue da NF-e Autorizada;'
      '       e - Situa'#231#227'o: 1=Autorizada; 2=Cancelada; 3=Denegada;'
      
        '       f - Confirma'#231#227'o Destinat'#225'rio: 0=n'#227'o confirmada; 1=confirm' +
        'ada; 2=desconhecida; 3=Opera'#231#227'o n'#227'o Realizada;'
      
        '       g - dhRecbto: Data e Hora de autoriza'#231#227'o de uso da NF-e p' +
        'ela SEFAZ origem. Idem para a data de autoriza'#231#227'o '
      '            do Cancelamento;'
      '       h - vNF: Valor total da NF-e;'
      ''
      #183' Dados da Carta de Corre'#231#227'o'
      '       a - dhEvento: Data de emiss'#227'o da Carta de Corre'#231#227'o;'
      '       b - tpEvento: C'#243'digo do de evento = 110110;'
      '       c - nSeqEvento: Sequencial do evento;'
      
        '       d - descEvento: "Carta de Corre'#231#227'o" ou "Carta de Correcao' +
        '";'
      '       e - xCorrecao: Corre'#231#227'o a ser considerada.'
      
        '       f - dhRecbto: Data e Hora de autoriza'#231#227'o de uso da Carta ' +
        'de Corre'#231#227'o;'
      ''
      
        'Importante ressaltar que as informa'#231#245'es acima s'#227'o basicamente as' +
        ' mesmas que s'#227'o mostradas na consulta resumida da NF-e.'
      ''
      ''
      ''
      ''
      
        'URL do Servi'#231'o de Consulta Rela'#231#227'o de Documentos Destinados (amb' +
        'iente de produ'#231#227'o):'
      ''
      
        'https://www.nfe.fazenda.gov.br/NFeConsultaDest/NFeConsultaDest.a' +
        'smx')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
