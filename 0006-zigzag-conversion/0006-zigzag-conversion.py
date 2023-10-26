class Solution:
    def convert(self, s: str, numRows: int) -> str:

        rows = []

        str_range = []

        while len(s) >= len(str_range):

            for i in range(1, numRows + 1):
                str_range.append(i)
                
            for i in range(numRows - 1, 0, -1):
                if i != 1:
                    str_range.append(i)
        
        for i in range(numRows):
            rownum = []
            rows.append(rownum)

        for i in range(len(s)):
            rows[(str_range[i]-1)].append(s[i])

        ans = ''.join(map(str, [item for sublist in rows for item in sublist]))
        

        return ans
    