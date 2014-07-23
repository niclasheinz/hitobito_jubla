# encoding: utf-8

#  Copyright (c) 2012-2013, Jungwacht Blauring Schweiz. This file is part of
#  hitobito_jubla and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito_jubla.

require 'spec_helper'

describe Event::KindsController do

  before { sign_in(people(:top_leader)) }


  context 'custom attributes' do
    let(:kind) { assigns(:kind) }

    it 'POST#create' do
      post :create, event_kind: { label: 'label',
                                  bsv_id: 'some id',
                                  j_s_label: 'some other label' }

      kind.errors.full_messages.should eq []
      kind.bsv_id.should eq 'some id'
      kind.j_s_label.should eq 'some other label'
    end

  end
end
