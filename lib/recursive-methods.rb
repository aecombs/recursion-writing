# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
	return 1 if n == 0
	raise ArgumentError, "Sorry! I can't calculate negative numbers!" if n < 0
	return (n * factorial(n - 1))
end

# Time complexity: O(n)
# Space complexity: O(n2)
def reverse(s)
	return s if s.length <= 1
	
	short_s = s[1..(s.length - 1)]
	return reverse(s[short_s]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
	return reverse_helper(s, 0, (s.length - 1))
end

def reverse_helper(s, i, j)
	if i < j
			s[i], s[j] = s[j], s[i]
			return reverse_helper(s, (i + 1), (j - 1))
	end
	return s
end

# Time complexity: O(n2)
# Space complexity: O(n)
def bunny(n)
	return 0 if n == 0

	return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(1)
def nested(s)
	left = 0
	right = 0
	s.each_char do |l|
			left += 1 if l == "("
			right += 1 if l == ")"
	end
	return true if left == right
	return false
end

# Time complexity: O(n)
# Space complexity: O(1)
def search(array, value)
	i = 0
	return search_helper(array, value, i)
end

def search_helper(array, value, i)
	if i < array.length
		return true if array[i] == value
		i += 1
		return search_helper(array, value, i)
	end
	return false
end

# Time complexity: O(n)
# Space complexity: O(1)
def is_palindrome(s)
	l = 0
	r = s.length - 1
	return pal_helper(s, l, r)
end

def pal_helper(s, l, r)
	if l <= r
		return false if s[l] != s[r]
		l += 1
		r -= 1
		return pal_helper(s, l, r)
	end
	return true
end

# Time complexity: O(n) with n being the shortest number
# Space complexity: O(1)
def digit_match(n, m)
	i = 0
	count = 0
	return digit_helper(n.digits, m.digits, i, count)
end

def digit_helper(n, m, i, count)
	if n[i] != nil && m[i] != nil
		count += 1 if n[i] == m[i]
		i += 1
		return digit_helper(n, m, i, count)
	end
	return count
end