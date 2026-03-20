{$define Align16Bytes}                   // Melhor desempenho de leitura/escrita de imagens
{$define UseCustomFixedSizeMoveRoutines} // Move mais rápido para blocos pequenos
{$define UseRuntimePackages}             // Se estiver usando pacotes .BPL
{$define NeverUninstall}                 // Evita problemas ao finalizar FastMM

{.$define EnableMemoryLeakReporting}               // Relatórios de vazamento (sem modo completo)
{.$define LogMemoryLeakDetailToFile}               // Salva detalhes dos vazamentos em arquivo
{.$define FullDebugMode}                           // Desative se quiser máximo desempenho
{.$define EnableMemoryLeakReportingOnShutdownOnly} // Ativa relatório só no encerramento
{.$define CheckHeapForCorruption}                  // Verifica corrupção (leve impacto)
{.$define LogErrorsToFile}                         // Salva erros em arquivo
{.$define InstallOnlyIfRunningInIDE}               // Ative se quiser FastMM só na IDE