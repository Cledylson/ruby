require 'Qt'

class Relogio < Qt::Widget
  def initialize
    super
    
    # Configura a janela do relógio
    setWindowTitle "Relogio Digital"
    resize 200, 80
    
    # Cria o rótulo para exibir o tempo
    @label = Qt::Label.new self
    @label.setAlignment Qt::AlignCenter
    font = Qt::Font.new("Arial", 32)
    @label.setFont font
    
    # Cria o timer para atualizar o tempo
    timer = Qt::Timer.new self
    connect timer, SIGNAL('timeout()'), self, SLOT('atualizar_tempo()')
    timer.start 1000 # atualiza a cada segundo
  end
  
  def atualizar_tempo
    # Atualiza o rótulo com o tempo atual
    @label.setText Time.now.strftime("%H:%M:%S")
  end
end

# Cria a aplicação Qt
app = Qt::Application.new ARGV

# Cria o relógio e exibe a janela
relogio = Relogio.new
relogio.show

# Inicia a execução da aplicação Qt
app.exec
