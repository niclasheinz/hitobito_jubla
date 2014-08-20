# encoding: utf-8

#  Copyright (c) 2012-2014, Jungwacht Blauring Schweiz. This file is part of
#  hitobito and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito.

module Jubla::GroupSerializer
  extend ActiveSupport::Concern

  included do
    extension(:attrs) do |_|
      map_properties(*item.used_attributes(:parish, :founding_year, :unsexed, :bank_account,
                                           :clairongarde, :jubla_insurance, :jubla_full_coverage,
                                           :coach_id, :advisor_id))
    end
  end

end