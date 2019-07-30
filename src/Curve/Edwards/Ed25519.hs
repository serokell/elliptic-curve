module Curve.Edwards.Ed25519
  ( AP
  , Curve(..)
  , ECurve(..)
  , EPoint
  , EACurve(..)
  , EAPoint
  , Fq
  , Fr
  , Group(..)
  , Point(..)
  , _a
  , _d
  , _h
  , _q
  , _r
  , gA
  , xA
  , yA
  ) where

import Protolude

import PrimeField (PrimeField)

import Curve (Curve(..), Form(..))
import Curve.Edwards (ECurve(..), EPoint, EACurve(..), EAPoint, Point(..))
import Group (Group(..))

-------------------------------------------------------------------------------
-- Ed25519 curve
-------------------------------------------------------------------------------

-- | Ed25519 curve.
data Ed25519

-- | Field of points of Ed25519 curve.
type Fq = PrimeField 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed

-- | Field of coefficients of Ed25519 curve.
type Fr = PrimeField 0x1000000000000000000000000000000014def9dea2f79cd65812631a5cf5d3ed

-- | Ed25519 curve is an Edwards curve.
instance Curve 'Edwards c Ed25519 Fq => ECurve c Ed25519 Fq where
  a_ = const _a
  {-# INLINE a_ #-}
  d_ = const _d
  {-# INLINE d_ #-}
  h_ = const _h
  {-# INLINE h_ #-}
  q_ = const _q
  {-# INLINE q_ #-}
  r_ = const _r
  {-# INLINE r_ #-}

-- | Coefficient @A@ of Ed25519 curve.
_a :: Fq
_a = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec
{-# INLINE _a #-}

-- | Coefficient @D@ of Ed25519 curve.
_d :: Fq
_d = 0x52036cee2b6ffe738cc740797779e89800700a4d4141d8ab75eb4dca135978a3
{-# INLINE _d #-}

-- | Cofactor of Ed25519 curve.
_h :: Integer
_h = 0x8
{-# INLINE _h #-}

-- | Characteristic of Ed25519 curve.
_q :: Integer
_q = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed
{-# INLINE _q #-}

-- | Order of Ed25519 curve.
_r :: Integer
_r = 0x1000000000000000000000000000000014def9dea2f79cd65812631a5cf5d3ed
{-# INLINE _r #-}

-------------------------------------------------------------------------------
-- Affine coordinates
-------------------------------------------------------------------------------

-- | Affine Ed25519 point.
type AP = EAPoint Ed25519 Fq

-- | Affine Ed25519 curve is an Edwards affine curve.
instance EACurve Ed25519 Fq where
  gA_ = gA
  {-# INLINE gA_ #-}
  xA_ = const xA
  {-# INLINE xA_ #-}
  yA_ = const yA
  {-# INLINE yA_ #-}

-- | Generator of affine Ed25519 curve.
gA :: AP
gA = A xA yA
{-# INLINE gA #-}

-- | Coordinate @X@ of affine Ed25519 curve.
xA :: Fq
xA = 0x216936d3cd6e53fec0a4e231fdd6dc5c692cc7609525a7b2c9562d608f25d51a
{-# INLINE xA #-}

-- | Coordinate @Y@ of affine Ed25519 curve.
yA :: Fq
yA = 0x6666666666666666666666666666666666666666666666666666666666666658
{-# INLINE yA #-}
