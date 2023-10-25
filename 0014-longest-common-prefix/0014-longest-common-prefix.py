class Solution:
    def longestCommonPrefix(self, v: List[str]) -> str:

        common_prefix = v[0]
        
       
        for string in v[1:]:
            
            min_length = min(len(common_prefix), len(string))
            
           
            i = 0
            while i < min_length and common_prefix[i] == string[i]:
                i += 1
            
          
            common_prefix = common_prefix[:i]
            
           
            if not common_prefix:
                break
        
        return common_prefix
