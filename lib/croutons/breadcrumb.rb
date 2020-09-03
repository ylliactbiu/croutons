module Croutons
  class Breadcrumb
    attr_reader :label, :url, :remote

    def initialize(label, url = nil, remote = nil)
      self.label = label
      self.url = url
      self.remote = remote
    end

    def labelize
      self.url = nil
    end

    def link?
      url.present?
    end

    def ==(other)
      label == other.label && url == other.url
    end

    private

    attr_writer :label, :url, :remote
  end
end
