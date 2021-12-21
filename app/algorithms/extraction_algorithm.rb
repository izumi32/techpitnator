class ExtractionAlgorithm
  attr_reader :game
  attr_reader :query

  def initialize(game)
    # ログ出力
    Rails.logger.debug('ExtractionAlgorithm initialized.')
    @game = game
    @query = Comic.all
  end

  def compute
    progresses = @game.progresses
    progresses.each do |progress|
      question = progress.question

      # 絞り込み処理

      # ログ出力
      Rails.logger.debug('On the way query is' + @query.to_sql.to_s)
      Rails.logger.debug('On the way comics are' + @query.pluck(:title).to_a.to_s)
    end
    @query
  end
end
