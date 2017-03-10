require "locker/version"

class Locker
  def get_combos
    Array.new.tap do |array|
      (1..12).each do |m|
        (1..31).each do |d|
          combo = "#{pad(m)}#{pad(d)}".split("").uniq.join("")
          array << combo if combo.length == 4
        end
      end
    end
  end

  private

    def pad(number)
      if number < 10
        "0#{number}"
      else
        number.to_s
      end
    end
end
