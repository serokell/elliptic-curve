module Curve.Montgomery.Curve25519
  -- | Types
  ( Fp
  , P
  -- | Parameters
  , _a
  , _b
  , _g
  , _h
  , _n
  , _p
  ) where

import Protolude

import PrimeField (PrimeField)

import Curve.Montgomery (Point(..), MCurve(..), MPoint)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Curve25519 curve
data Curve25519

-- | Field of Curve25519 curve
type Fp = PrimeField 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed

-- | Curve25519 curve is a Montgomery curve
instance MCurve Curve25519 Fp where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}

-- | Point of Curve25519 curve
type P = MPoint Curve25519 Fp

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of Curve25519 curve
_a :: Fp
_a = 0x76d06
{-# INLINE _a #-}

-- | Coefficient @B@ of Curve25519 curve
_b :: Fp
_b = 1
{-# INLINE _b #-}

-- | Generator of Curve25519 curve
_g :: P
_g = A
     9
     0x20ae19a1b8a086b4e01edd2c7748d14c923d4d7e6d7c61b229e9c5a27eced3d9
{-# INLINE _g #-}

-- | Cofactor of Curve25519 curve
_h :: Integer
_h = 8
{-# INLINE _h #-}

-- | Order of Curve25519 curve
_n :: Integer
_n = 0x1000000000000000000000000000000014def9dea2f79cd65812631a5cf5d3ed
{-# INLINE _n #-}

-- | Characteristic of Curve25519 curve
_p :: Integer
_p = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
{-# INLINE _p #-}