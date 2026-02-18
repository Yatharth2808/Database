class Solution(object):
    def isPalindrome(self, x):
        if (x < 0):
            return False
        x = str(x)
        l =len(x)
        for i in range(0, l/2):
            if x[i] != x[l-i-1]:
                return False
        
        return True
        """
        :type x: int
        :rtype: bool
        """
        