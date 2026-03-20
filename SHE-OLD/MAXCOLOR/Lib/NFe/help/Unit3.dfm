object frmHelp3: TfrmHelp3
  Left = 586
  Top = 39
  Width = 888
  Height = 818
  Caption = 'Download NF-e'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
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
      '                                      Download da NF-e'
      ''
      
        'Este servi'#231'o  para uma determinada Chave de Acesso informada, pa' +
        'ra as'
      'NF-e confirmadas pelo destinat'#225'rio. '
      ''
      'Descri'#231#227'o do Processo de Pedido de Download de NF-e:'
      ''
      
        'Este servi'#231'o pode ser consumido por qualquer destinat'#225'rio Pessoa' +
        ' Jur'#237'dica, de NF-e que possua um'
      
        'certificado digital de PJ com o seu CNPJ base. O pedido de consu' +
        'lta ser'#225' enviado por Web Service, sendo '
      'necess'#225'rio o uso de um certificado digital de PJ v'#225'lido.'
      ''
      
        'O download da NF-e s'#243' ser'#225' oferecido para pedido apresentado den' +
        'tro do prazo de 30 dias da'
      
        'autoriza'#231#227'o de uso e que tenha sido objeto de Confirma'#231#227'o da Ope' +
        'ra'#231#227'o ou Ci'#234'ncia da Opera'#231#227'o.'
      ''
      'O retorno do m'#233'todo pode trazer os seguintes resultados:'
      ''
      
        '1 - Rejei'#231#227'o - com a devolu'#231#227'o da mensagem com o motivo da falha' +
        ' informado no cStat. Exemplo:'
      ''
      
        '                 <retDownloadNFe versao="1.00" xmlns="http://www' +
        '.portalfiscal.inf.br/nfe">'
      '                 <tpAmb>2</tpAmb>'
      '                 <verAplic>XX_v123</verAplic>'
      '                 <cStat>631</cStat>'
      
        '                 <xMotivo>Rejei'#231#227'o: CNPJ-Base do Destinat'#225'rio di' +
        'fere do CNPJ-Base do Certificado Digital</xMotivo>'
      '                 <dhResp>2011-11-24T10:02:46</dhResp>'
      '                 </retDownloadNFe >'
      ''
      
        '2 - Pedido de download Processado cStat='#8221'139-Pedido de Download ' +
        'processado'#8221', o WS devolve um conjunto de'
      
        'informa'#231#245'es NFe para cada chave de acesso que consta do pedido. ' +
        'A aplica'#231#227'o do contribuinte deve analisar o cStat'
      
        ' de cada retorno (retNFe) para verificar se a NFe est'#225' dispon'#237've' +
        'l (cStat='#8221'140-Download disponibilizado'#8221'). Exemplo:'
      ''
      
        '                 <retDownloadNFe versao="1.00" xmlns="http://www' +
        '.portalfiscal.inf.br/nfe">'
      '                 <tpAmb>2</tpAmb>'
      '                 <verAplic>XX_v123</verAplic>'
      '                 <cStat>139</cStat>'
      
        '                 <xMotivo>Pedido de download Processado</xMotivo' +
        '>'
      
        '                 <dhResp>2011-11-24T10:02:46</dhResp>           ' +
        '      '
      '                 <retNFe>'
      
        '                 <chNFe>1234567890123456789012345678901234567890' +
        '1245</chNFe>'
      '                 <cStat>140</cStat>'
      '                 <xMotivo>Download disponibilizado</xMotivo>'
      
        '                 <procNFe> (conte'#250'do do xml da NF-e baixada) </p' +
        'rocNFe>'
      '                 </retNFe>                 '
      '                </retDownloadNFe >'
      ''
      ''
      ''
      ''
      'Recomenda'#231#245'es para evitar o uso indevido:'
      ''
      
        'A an'#225'lise do comportamento atual das aplica'#231#245'es das empresas ("a' +
        'plica'#231#227'o cliente") permite identificar algumas situa'#231#245'es'
      
        ' de "uso indevido" do ambiente de autoriza'#231#227'o de Nota Fiscal Ele' +
        'tr'#244'nica, mantidos pelas SEFAZ.'
      ''
      
        'Como exemplo maior do mau uso do ambiente de autoriza'#231#227'o, ressal' +
        'ta-se a falta de controle de algumas aplica'#231#245'es que'
      
        ' entram em "loop", consumindo recursos de forma indevida, sobrec' +
        'arregando principalmente o canal de comunica'#231#227'o com'
      ' a Internet. '
      ''
      
        'Para este Web Service de Download do XML da NF-e, ser'#227'o mantidos' +
        ' controles para identificar as situa'#231#245'es de novas tentativas'
      
        ' de download de uma NF-e j'#225' disponibilizada anteriormente. As no' +
        'vas tentativas ser'#227'o rejeitadas com o erro "641-Rejei'#231#227'o:'
      ' Consumo Indevido".'
      ''
      ''
      ''
      'Sobre o Download da NF-e:'
      ''
      
        'Normalmente o destinat'#225'rio da NF-e deve possuir o arquivo XML da' +
        ' NF-e enviado e/ou disponibilizado pelo emitente. '
      
        'Portanto n'#227'o '#233' esperado o download da totalidade das NF-e destin' +
        'adas a um determinado CNPJ.'
      ''
      
        'Futuramente, a SEFAZ poder'#225' estabelecer mecanismos de controle p' +
        'ara verificar o percentual de downloads realizados em'
      
        'rela'#231#227'o a quantidade total de NF-e destinadas a um determinado C' +
        'NPJ no per'#237'odo analisado.'
      ''
      ''
      'URL do Servi'#231'o de DownloadNF (ambiente de produ'#231#227'o):'
      ''
      'https://www.nfe.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx'
      ''
      ''
      '')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
