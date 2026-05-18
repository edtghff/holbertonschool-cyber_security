#!/usr/bin/env ruby

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    cipher(message, @shift)
  end

  def decrypt(message)
    cipher(message, -@shift)
  end

  private

  def cipher(message, shift)
    result = ""

    message.each_char do |c|
      is_upper = false
      is_lower = false

      if c >= 'A'
        if c <= 'Z'
          is_upper = true
        end
      end

      if c >= 'a'
        if c <= 'z'
          is_lower = true
        end
      end

      if is_upper
        result << ((c.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
      elsif is_lower
        result << ((c.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
      else
        result << c
      end
    end

    result
  end
end
