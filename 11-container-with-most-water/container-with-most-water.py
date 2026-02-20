class Solution:
    def maxArea(self, height: List[int]) -> int:
        
        j=len(height) -1
        i=0
        maxi=0
        
        while i<j:  
            
            count=(j-i)*min(height[i],height[j])
            
            if maxi<count:
                maxi=count
        
            if height[i]<height[j]:
                i+=1
            else:
                j-=1
        return maxi