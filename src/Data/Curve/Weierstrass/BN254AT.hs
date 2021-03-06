module Data.Curve.Weierstrass.BN254AT
  ( module Data.Curve.Weierstrass
  , Point(..)
  -- * BN254A curve
  , module Data.Curve.Weierstrass.BN254AT
  ) where

import Protolude

import Data.Field.Galois
import GHC.Natural (Natural)

import Data.Curve.Weierstrass
import Data.Curve.Weierstrass.BN254A (BN254A, Fq, Fr)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Field of points of BN254A curve over @Fq2@.
type Fq2 = Extension U Fq
data U
instance IrreducibleMonic U Fq where
  poly _ = [5, 0, 1]
  {-# INLINABLE poly #-}

-- BN254A curve is a Weierstrass curve.
instance Curve 'Weierstrass c BN254A Fq2 Fr => WCurve c BN254A Fq2 Fr where
  a_ = const _a
  {-# INLINABLE a_ #-}
  b_ = const _b
  {-# INLINABLE b_ #-}
  h_ = const _h
  {-# INLINABLE h_ #-}
  q_ = const _q
  {-# INLINABLE q_ #-}
  r_ = const _r
  {-# INLINABLE r_ #-}

-- | Affine BN254A curve point.
type PA = WAPoint BN254A Fq2 Fr

-- Affine BN254A curve is a Weierstrass affine curve.
instance WACurve BN254A Fq2 Fr where
  gA_ = gA
  {-# INLINABLE gA_ #-}

-- | Jacobian BN254A point.
type PJ = WJPoint BN254A Fq2 Fr

-- Jacobian BN254A curve is a Weierstrass Jacobian curve.
instance WJCurve BN254A Fq2 Fr where
  gJ_ = gJ
  {-# INLINABLE gJ_ #-}

-- | Projective BN254A point.
type PP = WPPoint BN254A Fq2 Fr

-- Projective BN254A curve is a Weierstrass projective curve.
instance WPCurve BN254A Fq2 Fr where
  gP_ = gP
  {-# INLINABLE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of BN254A curve.
_a :: Fq2
_a = toE' [
          ]
{-# INLINABLE _a #-}

-- | Coefficient @B@ of BN254A curve.
_b :: Fq2
_b = toE' [ 0x0
          , 0x2370fb049d410fbe4e761a9886e502417d023f40180000017e80600000000000
          ]
{-# INLINABLE _b #-}

-- | Cofactor of BN254A curve.
_h :: Natural
_h = 0x2370fb049d410fbe4e761a9886e50241dc42cf101e0000017e80600000000001
{-# INLINABLE _h #-}

-- | Characteristic of BN254A curve.
_q :: Natural
_q = 0x2370fb049d410fbe4e761a9886e502417d023f40180000017e80600000000001
{-# INLINABLE _q #-}

-- | Order of BN254A curve.
_r :: Natural
_r = 0x2370fb049d410fbe4e761a9886e502411dc1af70120000017e80600000000001
{-# INLINABLE _r #-}

-- | Coordinate @X@ of BN254A curve.
_x :: Fq2
_x = toE' [ 0x19b0bea4afe4c330da93cc3533da38a9f430b471c6f8a536e81962ed967909b5
          , 0xa1cf585585a61c6e9880b1f2a5c539f7d906fff238fa6341e1de1a2e45c3f72
          ]
{-# INLINABLE _x #-}

-- | Coordinate @Y@ of BN254A curve.
_y :: Fq2
_y = toE' [ 0x17abd366ebbd65333e49c711a80a0cf6d24adf1b9b3990eedcc91731384d2627
          , 0xee97d6de9902a27d00e952232a78700863bc9aa9be960c32f5bf9fd0a32d345
          ]
{-# INLINABLE _y #-}

-- | Generator of affine BN254A curve.
gA :: PA
gA = A _x _y
{-# INLINABLE gA #-}

-- | Generator of Jacobian BN254A curve.
gJ :: PJ
gJ = J _x _y 1
{-# INLINABLE gJ #-}

-- | Generator of projective BN254A curve.
gP :: PP
gP = P _x _y 1
{-# INLINABLE gP #-}
