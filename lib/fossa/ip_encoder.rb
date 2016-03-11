module Fossa
  class IpEncoder
    #
    # Converts IP to number
    # inet_aton
    #
    def load(n)
      return unless n
      [n].pack("N").unpack("C*").join "."
    end

    #
    # Converts number to IP
    # inet_ntoa
    #
    def dump(n)
      n.split(/\./).map(&:to_i).pack("C*").unpack("N").first
    end
  end
end
