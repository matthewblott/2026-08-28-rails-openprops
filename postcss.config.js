import postcssJitProps from 'postcss-jit-props';
import OpenProps from 'open-props';
import cssnano from 'cssnano';

export default {
  plugins: [
    postcssJitProps(OpenProps),
    cssnano()
  ]
};
