require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get #index" do
    get articles_path
    assert_equal 200, status
    assert_select "h1", "Articles"
  end

  test "should show form to add new article" do
    get  new_article_path
    assert_equal 200, status
    assert_select "button", "Create Article"
  end

  test "should validate the presence of the title and the body" do
    article = Article.new
    assert_not article.save
  end

  test "should validate the length of the body" do
    article = Article.new(title: "new article", body: 'b')
    assert_not article.save
  end

end
