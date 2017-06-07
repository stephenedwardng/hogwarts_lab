require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('./models/student')
require_relative( './models/house' )

get '/student' do
  @students = Student.all()
  erb(:index)
end

get '/student/new' do
  @houses = House.all()
  erb(:new)
end

get '/student/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

post '/student' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/house' do
  @houses = House.all()
  erb(:house_index)
  end

  get '/house/:id' do
  @house = House.find(params[:id])
  erb(:house_show)
end

