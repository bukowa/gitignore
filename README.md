# gitignore
[![Docker Repository on Quay](https://quay.io/repository/dim/gitignore/status "Docker Repository on Quay")](https://quay.io/repository/dim/gitignore)

Perform action on files matched by `.gitignore`

### Use:
```bash
find . | git check-ignore --no-index  --stdin | xargs -n1 -t <command>
```

### Example:
```bash
$ find . | git check-ignore --no-index  --stdin | xargs -n1 -t echo +1
echo 1+ ./ignored
1+ ./ignored
```

### Docker usage:
```bash
docker run --volume=${PWD}:/app quay.io/dim/gitignore <command>
```

### Docker Example:
```bash
$ docker run --volume=${PWD}:/app quay.io/dim/gitignore echo 1+
echo 1+ ./ignored
1+ ./ignored

```
