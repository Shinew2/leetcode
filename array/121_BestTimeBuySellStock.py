class Solution:
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        gain = 0
        if len(prices) <=1: 
            return 0
        low = prices[0]
        for i in range(1,len(prices)):
            gain = max(prices[i]-low, gain)
            low = min(low, prices[i])
        return gain
