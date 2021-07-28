class Element
  attr_reader :name, :appearance, :atomic_mass,
              :boil, :category, :color, :density, :discovered_by,
              :melt, :molar_heat, :named_by, :number, :period,
              :phase, :source, :spectral_img, :summary, :symbol,
              :xpos, :ypos, :shells, :electron_configuration,
              :electron_affinity, :electronegativity_pauling,
              :onization_energies

  def initialize(params)
    @name = params['name']
    @appearance = params['appearance']
    @atomic_mass = params['atomic_mass']
    @boil = params['boil']
    @category = params['category']
    @color = params['color']
    @density = params['density']
    @discovered_by = params['discovered_by']
    @melt = params['melt']
    @molar_heat = params['molar_heat']
    @named_by = params['named_by']
    @number = params['number']
    @period = params['period']
    @phase = params['phase']
    @source = params['source']
    @spectral_img = params['spectral_img']
    @summary = params['summary']
    @symbol = params['symbol']
    @xpos = params['xpos']
    @ypos = params['ypos']
    @shells = params['shells']
    @electron_configuration = params['electron_configuration']
    @electron_affinity = params['electron_affinity']
    @electronegativity_pauling = params['electronegativity_pauling']
    @ionization_energies = params['ionization_energies']
  end

  def to_s
    length = 30 # @name.length
    number = format(" %#{length}s", "номер п/п: #{@number}")
    symbol = format(" %#{length}s", "символ: #{@symbol}")
    elem_name = format(" %#{length}s", "название: #{@name}")
    atomic_mass = format(" %#{length}s", "атомная масса: #{@atomic_mass}")

    <<~DESCRIPTION
      +-------------------------------+
      |#{number}|
      |#{symbol}|
      |#{elem_name}|
      |#{atomic_mass}|
      +-------------------------------+
      Первооткрыватель: #{@discovered_by}
      Внешний вид: #{@appearance}
      Категория: #{@category}
      Плотность: #{@density}
      t\u00B0 кип. #{@boil}
      t\u00B0 плав. #{@melt}
      Электронная конфигурация: #{@electron_configuration}
      Описание
      #{@summary}
      Подробнее: #{@source}
    DESCRIPTION
  end
end
