package 'silversearcher-ag'

execute "install vim-plug" do
  command "curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  not_if "test -e ~/.vim/autoload/plug.vim"
end
