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

  "rules": {

    "quotes": [
      "error",
      "single"
    ],

    "no-unused-vars": [
      "warn",
      {
        "vars" : "all",
        "args" : "after-used"
      }
    ]
  }
};
