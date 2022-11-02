# hello qt
Qt5 + vscode + mingw + cmake

## 拉取代码
git clone https://github.com/weichangk/helloqt.git

## 编译前准备
### 确保安装了Qt
我使用的是Qt5.15.2

### 根据使用不同的编译套件配置环境变量

#### vscode + mingw + cmake
- cmake（Qt安装目录\Tools\CMake_64\bin）
- gcc compiler（Qt安装目录\Tools\mingw810_64\bin）
- mingw kit（Qt安装目录\5.15.2\mingw81_64 Qt安装目录\5.15.2\mingw81_64\bin）

#### vscode + msvc + cmake
- cmake（Qt安装目录\Tools\CMake_64\bin）
- msvc compiler（安装了vs即可直接用，不用配置，vs版本和msvc kit需要对应）
- msvc kit（Qt安装目录\5.15.2\msvc2019_64 Qt安装目录\5.15.2\msvc2019_64\bin）


### 根据使用不同的编译套件修改CMakeLists配置Qt Kit Dir
set(CMAKE_PREFIX_PATH "d:/Qt/5.15.2/mingw81_64")  或 set(CMAKE_PREFIX_PATH "d:/Qt/5.15.2/msvc2019_64") 

## 编译调试
\>CMake:Select a Kit （根据不同的编译套件选择gcc或msvc）
\>CMake:Build 编译 （F7 生成exe，可直接运行）
\>CMake:Debug 调试  （Ctrl + F5 执行调试）

