module.exports = {
  parser: "babel-eslint",
  extends: ["airbnb", "prettier", "prettier/react"],
  env: {
    browser: true,
    node: true,
    jquery: true,
    jest: true,
  },
  rules: {
    "react/react-in-jsx-scope": 0,
    "react/prop-types": 0,
    "react/jsx-filename-extension": 0,
    "react/destructuring-assignment": 0,
    "jsx-a11y/anchor-is-valid": 0,
    "no-nested-ternary": 0,
    "array-callback-return": 0,
    "consistent-return": 0,
    "no-param-reassign": 0,
    "lines-between-class-members": 0,
    "global-require": 0,
    "import/prefer-default-export": 0,
    "import/no-extraneous-dependencies": 0,
    "no-underscore-dangle": 0,
    "react/jsx-props-no-spreading": 0,
    "import/no-unresolved": 0,
    "react/no-array-index-key": 0,
    "jsx-a11y/label-has-associated-control": [
      "error",
      {
        required: {
          some: ["nesting", "id"],
        },
      },
    ],
    "jsx-a11y/label-has-for": 0,
  },
};
