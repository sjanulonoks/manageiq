require 'util/miq-ipmi'

module ManageIQ
  module Network
    module IPMI
      class Discovery
        def self.probe(ost)
          ost.hypervisor << :ipmi if MiqIPMI.is_available?(ost.ipaddr)
        end
      end
    end
  end
end
