# Ring buffer is a data structure that uses a single, 
# fixed-size buffer as if it were connected end-to-end.

# A circular buffer first starts empty and of some predefined length.

# Exact starting location does not matter in a circular buffer.

# Set the size of the array to a constant.
# Create an array with default value nil.
# Word with two idx. One for the older item and one for the current.



class CircularBuffer
  def initialize(buffer_size)
    @circular_buffer = []
    @buffer_size = buffer_size
    @oldest_idx = 0
    @current_idx = 0
  end

  def read
    raise BufferEmptyException if circular_buffer_empty?
    value = circular_buffer[oldest_idx]
    circular_buffer[oldest_idx] = nil
    move_foward_oldest_idx
    value
  end

  def write(value)
    return if value == nil

    if circular_buffer[current_idx] == nil
      circular_buffer[current_idx] = value 
    else
      raise BufferFullException
    end

    move_foward_current_idx
  end

  def write!(value)
    return if value == nil

    if circular_buffer[current_idx] == nil
      circular_buffer[current_idx] = value 
      move_foward_current_idx
    else
      circular_buffer[current_idx] = value 
      move_foward_current_idx
      move_foward_oldest_idx
    end
  end

  def move_foward_oldest_idx
    oldest_idx + 1 < buffer_size ? @oldest_idx += 1 : @oldest_idx = 0
  end

  def move_foward_current_idx
    current_idx + 1 < buffer_size ? @current_idx += 1 : @current_idx = 0
  end

  def clear
    @circular_buffer = []
  end

  def circular_buffer_empty?
    oldest_idx == current_idx && circular_buffer[@oldest_idx] == nil
  end

  private
  attr_reader :circular_buffer, :buffer_size, :oldest_idx, :current_idx

  class BufferEmptyException < Exception; end

  class BufferFullException < Exception; end
end