# Study FA bwd kernel

To run the benchmark:
```
BWD_MODE="fused_atomics" FLASH_ATTENTION_TRITON_AMD_ENABLE="TRUE" python benchmarks/benchmark_flash_attention.py
```

Test correctness:
```
BWD_MODE="fused_atomics" FLASH_ATTENTION_TRITON_AMD_ENABLE="TRUE" pytest -v tests/test_flash_attn_triton_amd.py::test_flash_attn_output[0.0-0.0-256-512-128-False-False-False-False-mha-dtype0-False]
```

Re-install everything
```
FLASH_ATTENTION_TRITON_AMD_ENABLE="TRUE" python setup.py install
```

## Gluon impl of `atomics_dkdvdq_noncausal`

Baseline performance
- triton compiler: `study_fa_bwd`
  - Alex's [PR#8365](https://github.com/triton-lang/triton/pull/8365)
  - Plus some hack to remove cvt layout before `atomic_add`
- kernel: https://github.com/ROCm/flash-attention/tree/study_fa_bwd
  - commit: 1a7420f04f2b7849322
- perf: 323 tflops
- vgpr: 512 (59)
- Some initial observations
  - AsyncCopy makes perf worse
  - load lse and delta cannot use buffer ops due to some llc error ([PR8302](https://github.com/triton-lang/triton/pull/8302))
  - Forcing them to use buffer load also makes perf worse.
    It seems global load --> branches --> sched barrier --> less vgpr usage --> better perf
  - `atomic_add` uses order [1, 0]. So it expects `isTransposed=True` for the dq dot
- IR dump: `/app/flash-attention/study_fa_bwd/baseline`
