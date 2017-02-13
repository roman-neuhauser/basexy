@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                BaseX: Base64, Base32, Base16 and others
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
########################################################################
              Commandline Tools, C++17 header-only library
########################################################################


This is an implementation of all five *Base X* encodings described in
RFC 4648.  It is MIT-licensed, and written in C++17.


.. contents::


License
=======

Published under the `MIT license`__, see `LICENSE file`__.

.. __: https://opensource.org/licenses/MIT
.. __: LICENSE


Installation
============

Requires `GNU make`_, C++17-capable compiler, and Boost.Format_.
Cram_ is required to run the test suite::

  $ ./configure
  $ make check
  $ sudo make install

.. _GNU make: https://www.gnu.org/software/make/
.. _Boost.Format: http://www.boost.org/doc/libs/1_63_0/libs/format/
.. _Cram: https://bitheap.org/cram/

If it complains about missing `boost/format.hpp`, tell it where your
Boost.Format headers are, eg::

  $ ./configure --with-boost=/usr


Encodings
=========

Base 64
~~~~~~~

https://tools.ietf.org/html/rfc4648#section-4

::

                      Table 1: The Base 64 Alphabet

     Value Encoding  Value Encoding  Value Encoding  Value Encoding
         0 A            16 Q            32 g            48 w
         1 B            17 R            33 h            49 x
         2 C            18 S            34 i            50 y
         3 D            19 T            35 j            51 z
         4 E            20 U            36 k            52 0
         5 F            21 V            37 l            53 1
         6 G            22 W            38 m            54 2
         7 H            23 X            39 n            55 3

         8 I            24 Y            40 o            56 4
         9 J            25 Z            41 p            57 5
        10 K            26 a            42 q            58 6
        11 L            27 b            43 r            59 7
        12 M            28 c            44 s            60 8
        13 N            29 d            45 t            61 9
        14 O            30 e            46 u            62 +
        15 P            31 f            47 v            63 /

                                                     (pad) =


Base 64 with URL and Filename Safe Alphabet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

https://tools.ietf.org/html/rfc4648#section-5

::

         Table 2: The "URL and Filename safe" Base 64 Alphabet

     Value Encoding  Value Encoding  Value Encoding  Value Encoding
         0 A            16 Q            32 g            48 w
         1 B            17 R            33 h            49 x
         2 C            18 S            34 i            50 y
         3 D            19 T            35 j            51 z
         4 E            20 U            36 k            52 0
         5 F            21 V            37 l            53 1
         6 G            22 W            38 m            54 2
         7 H            23 X            39 n            55 3

         8 I            24 Y            40 o            56 4
         9 J            25 Z            41 p            57 5
        10 K            26 a            42 q            58 6
        11 L            27 b            43 r            59 7
        12 M            28 c            44 s            60 8
        13 N            29 d            45 t            61 9
        14 O            30 e            46 u            62 - (minus)
        15 P            31 f            47 v            63 _ (underline)


                                                     (pad) =


Base 32
~~~~~~~

https://tools.ietf.org/html/rfc4648#section-6

::

                     Table 3: The Base 32 Alphabet

     Value Encoding  Value Encoding  Value Encoding  Value Encoding
         0 A             8 I            16 Q            24 Y
         1 B             9 J            17 R            25 Z
         2 C            10 K            18 S            26 2
         3 D            11 L            19 T            27 3
         4 E            12 M            20 U            28 4
         5 F            13 N            21 V            29 5
         6 G            14 O            22 W            30 6
         7 H            15 P            23 X            31 7

                                                     (pad) =


Base 32 with Extended Hex Alphabet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

https://tools.ietf.org/html/rfc4648#section-7

::

                Table 4: The "Extended Hex" Base 32 Alphabet

     Value Encoding  Value Encoding  Value Encoding  Value Encoding
         0 0             8 8            16 G            24 O
         1 1             9 9            17 H            25 P
         2 2            10 A            18 I            26 Q
         3 3            11 B            19 J            27 R
         4 4            12 C            20 K            28 S
         5 5            13 D            21 L            29 T
         6 6            14 E            22 M            30 U
         7 7            15 F            23 N            31 V

                                                     (pad) =


Base 16
~~~~~~~

https://tools.ietf.org/html/rfc4648#section-8

::

                     Table 5: The Base 16 Alphabet

     Value Encoding  Value Encoding  Value Encoding  Value Encoding
         0 0             4 4             8 8            12 C
         1 1             5 5             9 9            13 D
         2 2             6 6            10 A            14 E
         3 3             7 7            11 B            15 F
