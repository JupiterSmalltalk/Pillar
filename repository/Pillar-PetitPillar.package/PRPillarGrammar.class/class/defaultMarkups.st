accessing
defaultMarkups
  ^ self textMarkups
    addAll: self lineMarkups associations;
    yourself