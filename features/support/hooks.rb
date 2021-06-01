require 'report_builder'

Before do
    @product = Product.new
    # @register = User.new
end

at_exit do
    ReportBuilder.configure do |config|
      config.input_path = 'results/report.json'
      config.report_path = 'results/report'
      #config.report_path = 'relatório de teste'
      config.report_types = %i[html]
      config.report_title = 'report'
      config.additional_info = { 'Api' => 'Lojinha' }
      #config.additional_info = { "Projeto" => "Luma", "Funcionalidade" => "Cadastro Cliente", "Canal/Ambiente" => "Homolog", "Data de execução" => "#{data}" " #{hora}", "QA" => "Vinicyus Marques" }
    end
    ReportBuilder.build_report
end
