+++
title = "Download"
layout = "download"
url = "/download/"
+++

## Verification

We provide OpenPGP signatures (`.asc`) files and checksums (`.sha512`) for every release artifact.

The PGP signatures can be verified using PGP or GPG. 
First download the [KEYS](https://downloads.apache.org/cayenne/KEYS) file as well as the `.asc` signature file for the relevant release packages. 
Make sure you get these files from the [main distribution directory](https://downloads.apache.org/cayenne/), rather than from a mirror.

Then verify the signatures using

```bash
$ pgp -ka KEYS
$ pgp cayenne-X.Y.Z-src.tar.gz.asc
```

or

```bash
$ gpg --import KEYS
$ gpg --verify cayenne-X.Y.Z-src.tar.gz.asc
```

Alternatively, you can verify the SHA512 checksum on the files. 
For checking the SHA512 checksums, use the programs called `sha512sum`, or, alternatively, `openssl`. 
Windows users can use `CertUtil` or use the equivalent *nix tools as part of their Cygwin or Linux subsystems.

## Legacy Releases

* [All Apache Cayenne releases](https://archive.apache.org/dist/cayenne/)
* [All pre-Apache (SourceForge) Cayenne Releases](https://sourceforge.net/project/showfiles.php?group_id=48132)