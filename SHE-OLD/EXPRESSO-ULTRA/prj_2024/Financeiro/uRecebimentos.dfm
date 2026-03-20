inherited FrmRecebimentos: TFrmRecebimentos
  Caption = 'Contas a Receber'
  PixelsPerInch = 96
  TextHeight = 14
  inherited PNLForm: TPanel
    inherited PNLPrincipal: TPanel
      inherited PNLCadastro: TPanel
        inherited PNLCustomize: TPanel
          inherited PNLCustomizeConsulta: TPanel
            inherited GBCadastro: TGroupBox
              inherited PCConsulta: TdxPageControl
                inherited TSConsulta: TdxTabSheet
                  inherited DBGConsulta: TdxDBGrid
                    Filter.Criteria = {00000000}
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
