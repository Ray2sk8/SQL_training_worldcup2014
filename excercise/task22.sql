SELECT
    FLOOR(TIMESTAMPDIFF(YEAR, birth, '2014-06-13') / 5) * 5 AS age,
    position,
    COUNT(id) AS player_count,
    AVG(height),
    AVG(weight)
FROM
    players
GROUP BY
    age, position
ORDER BY
    age
-- INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/result.csv'
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n';

/*

体重の増加傾向: 例えばGKを確認すると、20代（80.5kg）から40代（94.0kg）にかけて平均体重が大きく増加しています。
これは、加齢による筋量増加や体格の完成、あるいはベテランに求められる「重み（パワー）」によるものと考えられます。

30代後半の特異性: 35代のDFは平均身長189cmと非常に高く、35代のFWも184cmと高い数値を示しています。
これは、年齢を重ねても生き残れるフィールドプレイヤーは、
平均よりも優れた体格という「代えのきかない武器」を持っている選手に限定される可能性を示唆しています。

*/