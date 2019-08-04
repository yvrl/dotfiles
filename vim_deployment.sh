cd ~/
target_directory="test-dir2"
if [ ! -d "$target_directory" ]; 
then 
	echo "Creating directory $target_directory"
	mkdir $target_directory
	cd $target_directory
else 
	echo "Cloning repository into existing directory"
	cd $target_directory
fi
git clone http://github.com/yvrl/dotfiles
cd ~/
vim_dir=".vim"
if [ ! -d "$vim_dir" ]; 
then
       	echo "Creating directory $vim_dir"
	mkdir $vim_dir
	cd $vim_dir
else 
	echo "Cloning repository into existing directory"
	cd $vim_dir
fi
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-pathogen
git clone https://github.com/dense-analysis/ale.git
git clone https://github.com/lilydjwg/colorizer
git clone https://github.com/Yggdroot/indentLine
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/rhysd/vim-clang-format
git clone git://github.com/airblade/vim-gitgutter.git
git clone https://github.com/scrooloose/nerdtree.git
echo "Done cloning"
cd ~/.vim
mkdir autoload
mv ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload
cp ~/$target_directory/dotfiles/.vimrc ~/
