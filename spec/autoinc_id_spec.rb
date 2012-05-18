require "spec_helper"

describe "Mongoid::AutoIncrement" do

  it "id should start with 1" do
    category = Category.create(name: 'Foo')
    post     = category.posts.create(title: 'Do it')
    category.id.should be(1)
    post.id.should be(1)
  end

  it "should auto increment id width step 1" do
    post  =  Post.create(title: 'Do it')
    post2 =  Post.create(title: 'Do it again')
    (post.id + 1).should == post2.id
  end

  it "should unique id" do
    post  =  Post.create(title: 'Do it')
    post2 =  Post.create(title: 'Do it again')
    post2.destroy
    post3 =  Post.create(title: 'Do it again again')
    post3.id.should be(3)
    post3.id.should == post.id + 2
  end

  it "should can find by id with int or string" do
    post  =  Post.create(title: 'Do it')
    post2 =  Post.create(title: 'Do it again')
    Post.find(1).should   ==  post
    Post.find('2').should ==  post2
  end

  it "should can find by _id with int or string" do
    post  =  Post.create(title: 'Do it')
    post2 =  Post.create(title: 'Do it again')
    Post.where(_id: 1).first.should   ==  post
    Post.where(_id: '2').first.should ==  post2
  end

  it "should with nil id" do
    post = Post.new
    post.id.should be(nil)
  end

  it "should create id for embedded document" do
    city = City.create(name: 'city', areas: [{name: 'area'}])
    city.areas.first.id.should == 1
  end
end