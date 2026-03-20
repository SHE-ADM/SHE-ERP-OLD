object frmHelp1: TfrmHelp1
  Left = 543
  Top = 48
  BorderStyle = bsDialog
  Caption = 'Evento de Manifesta'#231#227'o do Destinat'#225'rio'
  ClientHeight = 780
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = -1
    Top = -8
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
      
        'Este m'#233'todo permite que o destinat'#225'rio da Nota Fiscal eletr'#244'nica' +
        ' confirme a sua participa'#231#227'o na'
      
        'opera'#231#227'o acobertada pela Nota Fiscal eletr'#244'nica emitida para o s' +
        'eu CNPJ, atrav'#233's do envio da'
      'mensagem de:'
      ''
      
        #183' Confirma'#231#227'o da opera'#231#227'o:  confirmando a ocorr'#234'ncia da opera'#231#227'o' +
        ' e o recebimento da'
      'mercadoria (para as opera'#231#245'es com circula'#231#227'o de mercadoria);'
      ''
      
        #183' Desconhecimento da opera'#231#227'o: declarando o Desconhecimento da O' +
        'pera'#231#227'o;'
      ''
      
        #183' Opera'#231#227'o n'#227'o Realizada: declarando que a Opera'#231#227'o n'#227'o foi Real' +
        'izada (com Recusa do'
      
        'Recebimento da mercadoria e outros) e a justificativa porque a o' +
        'pera'#231#227'o n'#227'o se realizou;'
      ''
      
        #183' Ci'#234'ncia da opera'#231#227'o: declarando ter ci'#234'ncia da opera'#231#227'o destin' +
        'ada ao CNPJ, mas ainda'
      
        'n'#227'o possui elementos suficientes para apresentar uma manifesta'#231#227 +
        'o conclusiva, como as'
      'acima citadas.'
      ''
      
        'O autor do evento '#233' o destinat'#225'rio da NF-e. A mensagem XML do ev' +
        'ento ser'#225' assinada com o'
      
        'certificado digital que tenha o CNPJ base do Destinat'#225'rio da NF-' +
        'e.'
      ''
      
        'A ci'#234'ncia da opera'#231#227'o '#233' um evento opcional que pode ser utilizad' +
        'o pelo destinat'#225'rio para declarar'
      
        'que tem ci'#234'ncia da exist'#234'ncia da opera'#231#227'o, mas ainda n'#227'o tem ele' +
        'mentos suficientes para'
      'apresentar uma manifesta'#231#227'o conclusiva.'
      ''
      
        'O destinat'#225'rio deve apresentar uma manifesta'#231#227'o conclusiva dentr' +
        'o de um prazo m'#225'ximo'
      
        'definido, contados a partir da data de autoriza'#231#227'o da NF-e. Este' +
        ' prazo '#233' parametriz'#225'vel e'
      'atualmente est'#225' definido em 180 dias.'
      ''
      'O retorno do m'#233'todo pode trazer os seguintes resultados:'
      ''
      
        #183' Rejei'#231#227'o do Lote: por algum problema que comprometa o processa' +
        'mento do lote;'
      ''
      
        #183' Processamento do Lote: o lote foi processado (cStat=128), a va' +
        'lida'#231#227'o de cada evento do'
      'lote poder'#225' resultar em:'
      
        '.  Rejei'#231#227'o: o Evento ser'#225' descartado, com retorno do c'#243'digo do ' +
        'status do motivo da'
      'rejei'#231#227'o;'
      
        '. Recebido pelo Sistema de Registro de Eventos, com vincula'#231#227'o d' +
        'o evento na'
      
        'respectiva NF-e, o Evento ser'#225' armazenado no reposit'#243'rio do Sist' +
        'ema de Registro de'
      
        'Eventos com a vincula'#231#227'o do Evento '#224' respectiva NF-e (cStat="135' +
        '-Evento registrado e'
      'vinculado a NF-e");'
      
        '. Recebido pelo Sistema de Registro de Eventos sem vincula'#231#227'o do' +
        ' evento '#224
      
        'respectiva NF-e . O Evento ser'#225' armazenado no reposit'#243'rio do Sis' +
        'tema de Registro de'
      
        'Eventos, a vincula'#231#227'o do evento '#224' respectiva NF-e fica prejudica' +
        'da face a inexist'#234'ncia da'
      
        'NF-e no momento do recebimento do Evento (cStat="136-Evento regi' +
        'strado, mas n'#227'o'
      'vinculado a NF-e");'
      ''
      
        'A UF que recepcionar o Evento deve envi'#225'-lo para o Sistema de Co' +
        'mpartilhamento do AN (Ambiente'
      
        'Nacional) para que o Evento seja distribu'#237'do para as demais UF e' +
        'nvolvidas na opera'#231#227'o.'
      ''
      ''
      'Sobre os Eventos da Manifesta'#231#227'o do Destinat'#225'rio:'
      ''
      'A. Evento de "Confirma'#231#227'o da Opera'#231#227'o"'
      ''
      
        'Confirma a opera'#231#227'o e o recebimento da mercadoria (para as opera' +
        #231#245'es com circula'#231#227'o de mercadoria).'
      
        ' Se ocorrer a devolu'#231#227'o total ou parcial das mercadorias, al'#233'm d' +
        'o procedimento atual de gera'#231#227'o da Nota'
      
        ' Fiscal de devolu'#231#227'o, tamb'#233'm poder'#225' ser comandado o evento da "C' +
        'onfirma'#231#227'o da Opera'#231#227'o".'
      
        'O registro deste evento libera a possibilidade da empresa efetua' +
        'r o download da NF-e, conforme'
      'especificado no "Servi'#231'o de Download da NF-e Confirmada".'
      ''
      
        'Nota: Ap'#243's a Confirma'#231#227'o da Opera'#231#227'o pelo destinat'#225'rio, a empres' +
        'a emitente fica'
      'automaticamente impedida de cancelar a NF-e.'
      ''
      ''
      'B. Evento de "Desconhecimento da Opera'#231#227'o"'
      ''
      
        'Uma empresa pode ficar sabendo das opera'#231#245'es destinadas a um det' +
        'erminado CNPJ'
      
        'consultando o "Servi'#231'o de Consulta da Rela'#231#227'o de Documentos Dest' +
        'inados" ao seu CNPJ.'
      ''
      
        'O evento de "Desconhecimento da Opera'#231#227'o" permite ao destinat'#225'ri' +
        'o informar o seu'
      
        'desconhecimento de uma determinada opera'#231#227'o que conste nesta rel' +
        'a'#231#227'o, por exemplo.'
      ''
      ''
      'C. Evento de "Opera'#231#227'o n'#227'o Realizada"'
      ''
      
        'Em algumas situa'#231#245'es, a empresa destinat'#225'ria informa que a opera' +
        #231#227'o n'#227'o foi realizada (com'
      
        'Recusa de Recebimento da mercadoria e outros motivos), n'#227'o caben' +
        'do neste caso a emiss'#227'o de'
      'uma Nota Fiscal de devolu'#231#227'o.'
      ''
      
        'Este evento permite o registro da declara'#231#227'o de Opera'#231#227'o n'#227'o Rea' +
        'lizada pelo destinat'#225'rio,'
      
        'permitindo tamb'#233'm a informa'#231#227'o complementar da justificativa des' +
        'ta informa'#231#227'o.'
      ''
      ''
      'D. Evento de "Ci'#234'ncia da Opera'#231#227'o"'
      ''
      
        'Neste evento, o destinat'#225'rio declara ter ci'#234'ncia sobre uma deter' +
        'minada opera'#231#227'o destinada ao'
      
        'seu CNPJ, mas n'#227'o possui elementos suficientes para apresentar a' +
        ' sua manifesta'#231#227'o conclusiva'
      
        'sobre a opera'#231#227'o citada. O registro deste evento libera tamb'#233'm a' +
        ' possibilidade da empresa '
      
        'efetuar o download da NF-e, conforme especificado no "Servi'#231'o de' +
        ' Download das NF-e Confirmadas".'
      ''
      
        'O evento de "Ci'#234'ncia da Opera'#231#227'o" '#233' um evento opcional e pode se' +
        'r evitado, j'#225' que normalmente'
      
        'o destinat'#225'rio da NF-e deve possuir o arquivo XML da NF-e enviad' +
        'o e/ou disponibilizado pelo'
      'emitente.'
      ''
      
        'Ap'#243's um per'#237'odo determinado, todas as opera'#231#245'es com "Ci'#234'ncia da ' +
        'Opera'#231#227'o" dever'#227'o'
      
        'obrigatoriamente ter a manifesta'#231#227'o final do destinat'#225'rio declar' +
        'ada em um dos eventos de'
      
        'Confirma'#231#227'o da Opera'#231#227'o, Desconhecimento ou Opera'#231#227'o n'#227'o Realiza' +
        'da.'
      ''
      ''
      'E. Sobre a mudan'#231'a da Manifesta'#231#227'o do Destinat'#225'rio'
      ''
      
        'O destinat'#225'rio poder'#225' enviar uma '#250'nica mensagem de Confirma'#231#227'o d' +
        'a Opera'#231#227'o,'
      
        'Desconhecimento da Opera'#231#227'o ou Opera'#231#227'o n'#227'o Realizada, valendo a' +
        'penas a '#250'ltima mensagem'
      'registrada.'
      ''
      
        ' Exemplo: o destinat'#225'rio pode desconhecer uma opera'#231#227'o que havia' +
        ' confirmado'
      
        'inicialmente ou confirmar uma opera'#231#227'o que havia desconhecido in' +
        'icialmente.'
      
        'O evento de "Ci'#234'ncia da Opera'#231#227'o" n'#227'o configura a manifesta'#231#227'o f' +
        'inal do destinat'#225'rio, portanto'
      
        'n'#227'o cabe o registro deste evento ap'#243's a manifesta'#231#227'o final do de' +
        'stinat'#225'rio.'
      ''
      ''
      
        'Detalhes sobre prazos para utiliza'#231#227'o do servi'#231'o de Manifesta'#231#227'o' +
        ' do Destinat'#225'rio visite o link:'
      ''
      
        '          http://www.fazenda.gov.br/confaz/confaz/ajustes/2013/A' +
        'J_001_13.htm'
      ''
      ''
      ''
      ''
      
        'URL do Servi'#231'o de Manifesta'#231#227'o do Destinat'#225'rio (ambiente de prod' +
        'u'#231#227'o):'
      ''
      
        'https://www.nfe.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asm' +
        'x')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
end
