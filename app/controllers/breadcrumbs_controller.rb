class BreadcrumbsController < ApplicationController
  def new
    # 入力項目のマスタデータの初期値取得
    @breadcrumb_masters = BreadcrumbMaster.includes(:breadcrumb_categories).where(breadcrumb_categories: { id: 1 })
    @breadcrumbs = if signed_in?
                     current_user.breadcrumbs.build
                   else
                     # ゲストユーザー
                     User.first.breadcrumbs.build
                   end
  end

  def create
    @breadcrumbs = if signed_in?
                     current_user.breadcrumbs.build(create_breadcrumbs_params)
                   else
                     # ゲストユーザー
                     User.first.breadcrumbs.build(create_breadcrumbs_params)
                   end

    breadcrumbs = @breadcrumbs.map do |breadcrumb|
      # insert_allは時間を補完してくれないため
      breadcrumb["created_at"] = Time.zone.now
      breadcrumb["updated_at"] = Time.zone.now
      breadcrumb.attributes
    end

    Breadcrumb.insert_all breadcrumbs
    redirect_to root_path
  end

  private

  def create_breadcrumbs_params
    params.permit(breadcrumbs: %i[content breadcrumb_master_id]).require(:breadcrumbs)
  end
end
