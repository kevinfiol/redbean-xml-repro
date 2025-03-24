# redbean-xml-repro

To run:
```
make download
make build
make run
```

Both content-types are being added to the headers:
![image](https://github.com/user-attachments/assets/1fbfa66e-514f-4089-b017-ca4ab0e30119)


Commenting [this line in fullmoon.lua](https://github.com/pkulchenko/fullmoon/blob/9d62cff189b106ddb540c98539861e27c418055f/fullmoon.lua#L1436) alleviates the issue:

![image](https://github.com/user-attachments/assets/509ac225-cf84-40de-a572-e448bf3d8e16)
