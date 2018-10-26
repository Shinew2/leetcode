# https://leetcode.com/problems/nth-highest-salary/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE M INT;  #定义新变量
  SET M=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary FROM Employee 
      ORDER BY Salary Desc 
      #LIMIT 1 OFFSET M   #limit row_cnt offset n_start 只返回从第n_start+1行开始的row_cnt行数据
      LIMIT M,1
  );
END
