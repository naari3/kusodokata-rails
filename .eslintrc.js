module.exports = {
  "env": {
    "browser": true,
    "commonjs": true,
    "node": true
  },

  "ecmaFeatures": {
    "jsx": true
  },

  "extends": "standard",

  "parserOptions": {
    "sourceType": "module"
  },

  "plugins": [
    "react"
  ],

  "rules": {

    "quotes": [
      "error",
      "single"
    ],

    "react/jsx-uses-vars": "warn",

    "no-unused-vars": [
      "warn",
      {
        "vars" : "all",
        "args" : "after-used"
      }
    ]
  }
};
