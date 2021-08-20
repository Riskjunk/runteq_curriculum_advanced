require 'rails_helper'

RSpec.describe "Articles", type: :system do

  let(:article) { create(:article) }

  describe 'ページ遷移の確認' do
    context '記事編集画面でプレビューをクリック' do
      it '画像ファイルをアップロードせずとも、プレビューに移行する' do
        visit edit_admin_article_path(article.uuid)
        
      end
    end
  end
end