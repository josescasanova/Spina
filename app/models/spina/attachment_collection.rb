module Spina
  class AttachmentCollection < ActiveRecord::Base

    has_one :page_part, as: :page_partable
    has_and_belongs_to_many :attachments, join_table: 'spina_attachment_collections_attachments'

    attr_reader :attachment_tokens    
    accepts_nested_attributes_for :attachments, allow_destroy: true

    def attachment_tokens=(ids)
      self.attachment_ids = ids.split(",")
    end

  end
end
