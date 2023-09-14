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

padding visualiztion
![Padding Visualization](https://miro.medium.com/v2/resize:fit:1400/1*Tq_lyA2uRy4BTBpYlbKTTQ.gif)

- *Valid* padding means no padding
- *Same* padding preserves the input size


Ouptut Size of Convolution is the integer
```
output_width = (input_width - kernel_size + 2*padding_size) / stride + 1
```

