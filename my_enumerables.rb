module Enumerable
  def my_each
    if block_given?
      for para in self
        yield para
      end
      return self
    else
      false
    end
  end
 
  def my_each_with_index
    index = 0
    if block_given?
      for para in self
        yield para, index
        index += 1
      end
      self
    else
      false
    end
  end

  def my_select
    selected = []
    if block_given?
      for para in self
        if yield para
          selected.push(para)
        end
      end
      selected
    else 
      false
    end
  end

  def my_all?
    all = []
    if block_given?
      for para in self
        if yield para
          all.push(para)
        end
      end
      if all.length == self.length 
        return true
      else 
        return false
      end
    else 
      false
    end
  end

   def my_any?
   any = []
   if block_given?
     for para in self
       if yield para
         any.push(para)
       end
     end
     if any.length > 0
       return true
     else 
       return false
     end
   else
    false
   end
  end

  def my_none?
    none = []
    if block_given?
      for para in self
        if yield para
          none.push(para)
        end
      end
      if none.length == 0 
        return true
      else
        return false
      end
    else 
      false
    end
  end

  def my_count
    counter = []
    if block_given?
      for para in self
        if yield para
          counter.push(para)
        end
      end
      return counter.length
    else 
      return self.length
    end
  end

  def my_map(&block)
    new_arr = []
    if block_given?
      for para in self
        new_arr.push(yield para)
      end
      return new_arr
    else
      false
    end
  end

  def my_inject(sum = 0)
    if block_given?
      for para in self
        sum = yield sum, para
      end
      return sum
    else
      false
    end
  end
end