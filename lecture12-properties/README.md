# Lecture 12 example: Properties

Start GHCi with:

```shell
make ghci
```

At the GHCi prompt, run the supplied property with:

```haskell
quickCheck prop_sorted
```

Complete `prop_model` in `Properties.hs`, reload with `:reload`, and run:

```haskell
quickCheck prop_model
```

Run the focused checks with:

```shell
make test
```
