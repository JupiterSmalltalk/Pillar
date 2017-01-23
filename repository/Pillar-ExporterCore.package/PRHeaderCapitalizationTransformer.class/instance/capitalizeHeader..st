visiting-document
capitalizeHeader: aString
  | stream |
  stream := String new writeStream.
  aString substrings
    inject: String new
    into: [ :subtotal :next | stream << next capitalized << ' ' ].
  ^ stream contents trimBoth