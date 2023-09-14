### Variational Autencoders vs GANs

```
Generative AI Models
├── Explicit Density Models
│   ├── Autoregressive Models
│   │   ├── PixelRNN/PixelCNN
│   │   └── Transformer-based Models
│   ├── Flow-based Models
│   │   ├── Normalizing Flows
│   │   └── Real NVP
│   └── Variational Autoencoders (VAEs)
│       ├── Conditional VAEs
│       └── Beta-VAEs
└── Implicit Density Models
    └── Generative Adversarial Networks (GANs)
        ├── DCGANs
        ├── WGANs
        └── StyleGANs
```

### Convolution

Ouptut Size of Convolution is the integer
```
output_width = (input_width - kernel_size + 2*padding_size) / stride + 1
```

- *Valid* padding means no padding
  ```
  padding_size = 0
  ```
- *Same* padding preserves the input size
  ```
  padding_size can be calculated by solving with output_width = input_width
  padding_size = (input_width * (stride - 1) + kernel_size - stride) / 2

  for stride = 1
  padding_size = (kernel_size - 1)/2

  padding_size will always be an integer

  In tensorflow if padding size is even, the padding is distributed evenly on both sides.
  In tensorflow if padding size is odd, the one extra padding is added to the right-most or bottom-most side.
  ```
  
padding visualiztion
![Padding Visualization](https://miro.medium.com/v2/resize:fit:1400/1*Tq_lyA2uRy4BTBpYlbKTTQ.gif)






