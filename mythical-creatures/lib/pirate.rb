class Pirate

  attr_accessor :name, :job, :cursed, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @cursed_if_commits_three_heinous_acts = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @cursed_if_commits_three_heinous_acts += 1
    if @cursed_if_commits_three_heinous_acts == 3
      @cursed = true
    end
  end

  def rob
    @booty += 100
  end

end
