module Spree
  class VendorsController < Spree::StoreController
    before_action :load_vendors, only: [:index, :show]
    before_action :load_vendor, only: [:show]

    respond_to :html

    def index
      @vendors = Spree::Vendor.all.active
    end

    def show; end

    private

    def load_vendors
      @vendors = Spree::Vendor.all.active
    end

    def load_vendor
      @vendor = @vendors.friendly.find(params[:id])
    end
  end
end
