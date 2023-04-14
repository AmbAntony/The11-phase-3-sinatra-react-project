
 class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get "/books" do
      books = Book.all
      books.to_json
    end
  
    get "/books/:id" do
      book = Book.find(params[:id])
      book.to_json
    end
  
    post "/books" do
      new_book =
        Book.create(
          title: params[:title], 
          author: params[:author],
          category: params[:category])
          # borrower_id: params[:borrower_id])
        new_book.to_json
    end
  
    patch "/books/:id" do
      updated_book = Book.find(params[:id])
      updated_book.update(
        title: params[:title],
        author: params[:author],
        category: params[:category])
        # borrower_id: params[:borrower_id])
      updated_book.to_json
    end
  
    delete "/books/:id" do
      deleted_book = Book.find(params[:id])
      deleted_book.destroy
      deleted_book.to_json
    end
  
  
  get "/members" do
    members = Member.all
    members.to_json
  end

  get "/members/:id" do
    member = Book.find(params[:id])
    member.to_json
  end

  post "/members" do
    new_member =
      Member.create(
        name: params[:name], 
        member_number: params[:member_number],
        mobile_number: params[:mobile_number])
      new_member.to_json
  end

  patch "/members/:id" do
    updated_member = Member.find(params[:id])
    updated_member.update(
        name: params[:name], 
        member_number: params[:member_number],
        mobile_number: params[:mobile_number])
    updated_member.to_json
  end

  delete "/members/:id" do
    deleted_member = Member.find(params[:id])
    deleted_member.destroy
    deleted_member.to_json
  end

end

