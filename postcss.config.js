// import postcssJitProps from 'postcss-jit-props';
// import OpenProps from 'open-props';
//
// export default {
//   plugins: [
//     postcssJitProps(OpenProps),
//   ]
  
import { createRequire } from "node:module";
import postcssJitProps from "postcss-jit-props";

const require = createRequire(import.meta.url);
const OpenProps = require("open-props");

export default {
  plugins: [
    postcssJitProps(OpenProps)
  ]
};
