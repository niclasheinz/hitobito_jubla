# frozen_string_literal: true

#  Copyright (c) 2024-2024, Jungwacht Blauring Schweiz. This file is part of
#  hitobito_jubla and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_jubla.

require "spec_helper"

describe Jubla::Role::NullAlumnusManager do
  it "has a create-method" do
    expect(subject.create).to be_truthy
  end

  it "has a destroy-method" do
    expect(subject.destroy).to be_truthy
  end
end