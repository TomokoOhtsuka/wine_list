require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  #Userモデルが問題ないかどうかのテスト
  
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "ユーザーがvalidか" do
    @user.valid?
  end
  
  test "バリデーション(presence,length)が機能しているか" do
    @user.name = "" || "a" * 21
    @user.email = "" || "a" * 101
    assert_not @user.valid?
  end
  
  test "emailバリデーション(uniqueness)が機能しているか" do
    #チュートリアル　リスト6.23　
    dup_user = @user.dup
    #dup_user.email = @user.email.dupだとエラー出た。
    @user.save
    assert_not dup_user.valid?
  end

end