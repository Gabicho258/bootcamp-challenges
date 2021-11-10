# Css Dinner

**1.-** plate

**2.-** bento

**3.-** #fancy

**4.-** plate apple

**5.-** #fancy pickle

**6.-** .small

**7.-** orange.small

**8.-** bento orange.small

**9.-** plate, bento

**10.-** *

**11.-** plate *

**12.-** plate + .small, plate + apple

**13.-** bento ~ pickle

**14.-** plate > apple

**15.-** plate > orange:first-child

**16.-** plate apple:only-child, plate pickle:only-child

**17.-** plate apple:last-child, pickle

**18.-** :nth-child(3)

**19.-** bento:nth-last-child(3)

**20.-** apple:first-of-type

**21.-** plate:nth-of-type(even)

**22.-** plate:nth-of-type(2n+3)

**23.-** plate apple:only-of-type

**24.-** orange:last-of-type, apple:last-of-type

**25.-** bento:empty

**26.-** apple:not(.small)

**27.-** [for]

**28.-** plate[for]

**29.-** bento[for="Vitaly"]

**30.-** [for^="S"]

**31.-** [for$="ato"]

**32.-** [for*="obb"]

![image](https://user-images.githubusercontent.com/85516522/141173379-934fc1b1-b60c-4537-9c57-46e8f4d617ba.png)

![image](https://user-images.githubusercontent.com/85516522/141017836-d6a4bd34-3e7e-48f8-95e4-322e237b50a6.png)

#### Existen selectores de tipo (p, h1, etc), selectores de clase (.class), de id (#id), universal (*), de atributos ([attribute]). Además también están los que implican decendencia como: (A + B), hermanos (A ~ B), hijo decendiente (>) y los pseudoelementos (:last-child, :first-child, etc).

#### La especificidad se refiere a como los navegadores interpretan que valores de un elemento son más importantes y por ende serán aplicados. Se calcula en una escala del 0 al 2, donde 0 son los selectores de tipo y pseudo-elementos, 1 los selectores de clase, selectores de atributos y pseudoclases y 2 son los selectores por ID.
