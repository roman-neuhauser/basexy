// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#include <bitset>
#include <iostream>

#include "basexy/slice.hpp"


int
main()
{
  using namespace std;

  {
    bitset<16> xy(0);
    cout << "xy: " << xy << endl;

    slice<8>(xy, 0) = bitset<8>("01010011");
    cout << "xy: " << xy << endl;

    auto x = slice<10>(xy, 0);
    auto y = slice<6>(xy, 10);

    cout << "x : " << x << endl;
    cout << "y : " << y << endl;
    cout << "xy: " << xy << endl;
  }

  {
    bitset<16> xy(0);
    auto x = slice<8>(xy, 0).copy();
    auto y = slice<8>(xy, 8).copy();

    cout << "x : " << x << endl;
    cout << "y : " << y << endl;
  }

  {
    bitset<16> xy(0);
    slice<8>(xy, 0) = bitset<8>("00000000");
    slice<8>(xy, 8) = bitset<8>("11111111");

    auto x = slice<3>(xy, 0);
    auto y = slice<13>(xy, 3);

    cout << "x : " << x << endl;
    cout << "y : " << y << endl;
    cout << "xy: " << xy << endl;
  }

  {
    bitset<16> xy(0);
    slice<5>(xy, 3) = bitset<5>(~0);

    cout << "xy: " << xy << endl;
  }

  {
    bitset<16> xy(0);
    slice<8>(xy, 0) = 42;

    cout << "xy: " << xy << endl;
  }

  {
    string msg("Hello");
    bitset<40> chunk(0);

    for (auto i = 0; i < 5; ++i) {
      slice<8>(chunk, i*8) = msg[i];
    }

    cout << "msg  : " << msg << endl;
    cout << "chunk: " << chunk << endl;

    for (auto i = 0; i < 5; ++i) {
      cout.put(slice<8>(chunk, i*8).copy().to_ulong());
    }
    cout << endl;
  }

  {
    bitset<8> xy(0);
    auto x = slice<4>(xy, 4);
    auto y = slice<4>(xy, 0);
    x = '6';
    y = '6';

    cout << "x : " << x << endl;
    cout << "y : " << y << endl;
    cout << "xy: " << xy << endl;
    cout << char(xy.to_ulong()) << endl;
  }
}
