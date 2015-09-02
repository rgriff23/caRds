# Examples of caRds

___

### Valentine's Day

`OneThousandHearts` sprinkles 1000 tiny hearts about a larger heart, creating negative heart space where a romantic message can be included. If you use the `to` argument to specify the recipient of your Valentine's Day caRd, a simple message will be generated automatically:

```
OneThousandHearts(to = "Samara")
```

![](./examples/OneThousandHearts.tiff)

Alternatively, you can use the `lines` arguments to include a personalized message up to 4 lines long:

```
OneThousandHearts(line1 = "Roses are red", line2 = "Violets are blue", line3 = "If you were a Pokemon", line4 = "I would choose you!")
```

![](./examples/OneThousandHeartsPoem.tiff)

___

### Christmas

`ChristmasTree` generates a jolly tree with presents underneath:

```
ChristmasTree(from="Randi", to="Chase", numPresents=10)
```

![](./examples/ChristmasTree.tiff)

Add tinsel with `tinsel = TRUE`. 

```
ChristmasTree(from="Randi", to="Chase", numPresents=10, tinsel=TRUE)
```

![](./examples/ChristmasTreeGaudy.tiff)

___

