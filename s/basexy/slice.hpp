// vim: sw=2 sts=2 et fdm=marker cms=\ //\ %s

#pragma once

#include <bitset>
#include <ostream>


template <
  size_t ViewBits
, typename Bitset
, typename View = std::bitset<ViewBits>
>
struct bitset_view
{
  typedef View view_sized;

  bitset_view(Bitset &&data, size_t offset)
  : data_(data)
  , offset(offset)
  {}

  auto&& operator=(view_sized rhs)
  {
    return assign(rhs);
  }

  auto&& operator=(unsigned long rhs)
  {
    return assign(view_sized(rhs));
  }

  auto copy() const
  {
    return assign(view_sized(), 0, data_, offset);
  }

	friend auto& operator<<(std::ostream& os, const bitset_view &bs)
  {
		return os << bs.copy();
	}

private:

  auto&& assign(view_sized const &rhs)
  {
    assign(data_, offset, rhs, 0);
    return *this;
  }

  template <typename Bitset1, typename Bitset2>
  auto assign(Bitset1 &&lhs, size_t loffset, Bitset2 const &rhs, size_t roffset) const
  {
    // FIXME: exception safety
    for (size_t i = 0; i < ViewBits; ++i)
      lhs[loffset + i] = rhs[roffset + i];
    return lhs;
  }

  Bitset &&data_;
  size_t const offset;
};

template <size_t ViewBits, typename Bitset>
auto slice(Bitset &&bs, size_t offset)
{
  // FIXME: waiting for FreeBSD to update the system compiler
  // static_assert(bs.size() >= ViewBits, "view exceeds underlying data");
  return bitset_view<ViewBits, Bitset>(bs, offset);
}

