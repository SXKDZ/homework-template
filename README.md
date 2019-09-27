# Homework Template

## LaTeX Template for Homework

This repository establishes a LaTeX template for homework.

### Features

* Beautiful yet simple typesetting.
* Fully customizable problem sets.

### Key Commands

* `\documentclass{hw}` specifies this template.

* `\newproblemset{problem}{Problem}{Problems}`

  Creats a problem set named `Problems`, where each problem is named `Problem`. This command creates arbitrary kinds of problems set. For example, you may create problem sets with name of `Questions` a/o `Computer Exercises` as well.

  Technically, this command creates two environment, i.e. `problem` and `problem*`, which will be explained in details below. Besides, it creates a command `\makeproblem` which outputs the title of `Problems` as well.

* `problem` environments (caveat: `problem` is defined by the first argument of the previous command `\newproblemset`):

* ```latex
  \begin{problem}[optional problem subtitle]
  	problem description here.
  \end{problem}
  ```

  Note that equations within `problem` will be numbered in the format of `Px.y`, where `P` is the first character of `Problem`, `x` is the number of problem, `y` is the number of equation.

  Replacing `problem` with `problem*` gives title without auto numbering and equations with plain format (only the number of equation).
  
* `answer` environment:

  ```latex
  \begin{answer}
  	answer here.
  \end{answer}
  ```

  Similarly, using `answer*` corresponding to `problem*` environment gives equations with plain format.

* Other metadata necessary for homework:

  ```latex
  \course
  {LaTeX Practice}
  {Fall 2019}
  {Local University}
  
  \assignment
  {Assignment 1}
  {Get Ready for LaTeX}
  
  \student
  {Student Name}
  {2019000000}
  {Student Affliation}
  {name.student@mail.com}
  ```

  You may leave the second argument of `\assignment` empty. Other fields are mandatory.

* Chinese is supported. Default SinoType fonts installed on macOS are default. You may modify font names specified in `hw.cls`.

* Please refer to `hw.tex` for usage and `hw.pdf` for demo.

### Downloads

- Click [here](https://github.com/SXKDZ/homework-template/releases) to download

### Licence

Apache 2.0

## LaTeX作业模板

本仓库为LaTeX作业模板。

### 特性

- 简洁优美的排版
- 完全自定义题目设置

### 核心命令

- `\documentclass{hw}` 使用本模板。

- `\newproblemset{problem}{Problem}{Problems}`

  该命令创建了一个题库，命名为`Problems`，其中每道题被命名为`Problem`。可以根据实际情况对题库的名称进行自定义，如`Questions`或者`Computer Exercises`。

  该命令定义了两个环境（environment），即`problem` 和`problem*`。此外，该命令还定义了一个命令`\makeproblem`用于输出`Problems`标题。

- `problem` 环境使用方法（注意：此处`problem`是由`\newproblemset`的第一个参数定义而来）

- ```latex
  \begin{problem}[可选问题副标题]
  	问题描述
  \end{problem}
  ```

  注意：`problem`环境中的公式将被自动编号为`Px.y`，其中`P`是`Problem`的首字母，`x`是问题的序号，`y`是公式的序号。将`problem`替换为`problem*`得到不自动编号标题的版本，且公式将使用普通格式（仅含公式的序号）。

- `answer`环境：

  ```latex
  \begin{answer}
  	答案写在这里
  \end{answer}
  ```

  类似地，对`problem*`使用`answer*`环境。

- 用下列命令定义作业的其他定义元数据：

  ```latex
  \course
  {LaTeX Practice}
  {Fall 2019}
  {Local University}
  
  \assignment
  {Assignment 1}
  {Get Ready for LaTeX}
  
  \student
  {Student Name}
  {2019000000}
  {Student Affliation}
  {name.student@mail.com}
  ```

  `\assignment`的第二个参数可留空。其他参数是必要的。

- 支持中文，默认使用macOS中的SinoType系列字体。请在`hw.cls`中修改有关字体名称。

- 请查阅 `hw.tex`以获取相关使用方法，并且查阅 `hw.pdf` 查看演示效果。

### 下载

- 点击[这里](https://github.com/SXKDZ/homework-template/releases)下载

### 开源协议

本模板遵循Apache 2.0协议。