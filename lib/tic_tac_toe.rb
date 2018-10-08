class   TicTacToe

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def initialize

    @board = [" "," "," "," "," "," "," "," "," "]

  end

  def display_board

    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "

  end

  def input_to_index(input)

    @input = input.to_i - 1

  end

  def move(index,mark="X")
    @board[index]=mark
  end

  def position_taken?(index)
    if ((@board[index] == "X") || (@board[index] == "O"))
      return true
    else
      return false
    end
  end

  def valid_move?(index)
    if (!((@board[index] == "X") || (@board[index] == "O")))
      if(index >= 0 && index <9)
        return true
      else
        return false
      end
    else
      return false
    end
  end


  def turn_count
    counter=0
    @board.each do |element|
      if (element=='X' || element=='O')
        counter+=1
      end
    end
    return counter
  end

  def turn

  invalid = true

    while invalid
      puts "Please enter 1-9:"
      input=gets
      index=input_to_index(input)
      invalid=!valid_move?(board,index)
    end

    move(index)
  end

end
