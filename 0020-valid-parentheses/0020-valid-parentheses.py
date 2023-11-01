class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        para_l = {
            '(': ')',
            '[': ']',
            '{': '}'
        }
        
        for char in s:
            if char in para_l:  
                stack.append(char)
            elif char in para_l.values():  
                if not stack:  
                    return False
                if para_l[stack.pop()] != char:  
                    return False
        
        return not stack  