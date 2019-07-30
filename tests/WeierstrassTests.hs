module WeierstrassTests where

import qualified Curve.Weierstrass.Anomalous       as Anomalous
import qualified Curve.Weierstrass.ANSSIFRP256V1   as ANSSIFRP256V1
import qualified Curve.Weierstrass.BLS12381        as BLS12381
import qualified Curve.Weierstrass.BLS12381T       as BLS12381T
import qualified Curve.Weierstrass.BLS48581        as BLS48581
import qualified Curve.Weierstrass.BLS48581T       as BLS48581T
import qualified Curve.Weierstrass.BN224           as BN224
import qualified Curve.Weierstrass.BN254           as BN254
import qualified Curve.Weierstrass.BN254T          as BN254T
import qualified Curve.Weierstrass.BN254A          as BN254A
import qualified Curve.Weierstrass.BN254AT         as BN254AT
import qualified Curve.Weierstrass.BN254B          as BN254B
import qualified Curve.Weierstrass.BN254BT         as BN254BT
import qualified Curve.Weierstrass.BN256           as BN256
import qualified Curve.Weierstrass.BN384           as BN384
import qualified Curve.Weierstrass.BN462           as BN462
import qualified Curve.Weierstrass.BN462T          as BN462T
import qualified Curve.Weierstrass.BN512           as BN512
import qualified Curve.Weierstrass.BrainpoolP160R1 as BrainpoolP160R1
import qualified Curve.Weierstrass.BrainpoolP160T1 as BrainpoolP160T1
import qualified Curve.Weierstrass.BrainpoolP192R1 as BrainpoolP192R1
import qualified Curve.Weierstrass.BrainpoolP192T1 as BrainpoolP192T1
import qualified Curve.Weierstrass.BrainpoolP224R1 as BrainpoolP224R1
import qualified Curve.Weierstrass.BrainpoolP224T1 as BrainpoolP224T1
import qualified Curve.Weierstrass.BrainpoolP256R1 as BrainpoolP256R1
import qualified Curve.Weierstrass.BrainpoolP256T1 as BrainpoolP256T1
import qualified Curve.Weierstrass.BrainpoolP320R1 as BrainpoolP320R1
import qualified Curve.Weierstrass.BrainpoolP320T1 as BrainpoolP320T1
import qualified Curve.Weierstrass.BrainpoolP384R1 as BrainpoolP384R1
import qualified Curve.Weierstrass.BrainpoolP384T1 as BrainpoolP384T1
import qualified Curve.Weierstrass.BrainpoolP512R1 as BrainpoolP512R1
import qualified Curve.Weierstrass.BrainpoolP512T1 as BrainpoolP512T1
import qualified Curve.Weierstrass.SECP112R1       as SECP112R1
import qualified Curve.Weierstrass.SECP112R2       as SECP112R2
import qualified Curve.Weierstrass.SECP128R1       as SECP128R1
import qualified Curve.Weierstrass.SECP128R2       as SECP128R2
import qualified Curve.Weierstrass.SECP160K1       as SECP160K1
import qualified Curve.Weierstrass.SECP160R1       as SECP160R1
import qualified Curve.Weierstrass.SECP160R2       as SECP160R2
import qualified Curve.Weierstrass.SECP192K1       as SECP192K1
import qualified Curve.Weierstrass.SECP192R1       as SECP192R1
import qualified Curve.Weierstrass.SECP224K1       as SECP224K1
import qualified Curve.Weierstrass.SECP224R1       as SECP224R1
import qualified Curve.Weierstrass.SECP256K1       as SECP256K1
import qualified Curve.Weierstrass.SECP256R1       as SECP256R1
import qualified Curve.Weierstrass.SECP384R1       as SECP384R1
import qualified Curve.Weierstrass.SECP521R1       as SECP521R1
import Test.Tasty

import GroupTests

testWeierstrass :: TestTree
testWeierstrass = testGroup "Weierstrass"
  [ testGroup "Affine"
    [ test       "Anomalous"       Anomalous.gA       Anomalous._h       Anomalous._q       Anomalous._r
    , test   "ANSSIFRP256V1"   ANSSIFRP256V1.gA   ANSSIFRP256V1._h   ANSSIFRP256V1._q   ANSSIFRP256V1._r
    , test        "BLS12381"        BLS12381.gA        BLS12381._h        BLS12381._q        BLS12381._r
    , test       "BLS12381T"       BLS12381T.gA       BLS12381T._h       BLS12381T._q       BLS12381T._r
    , test        "BLS48581"        BLS48581.gA        BLS48581._h        BLS48581._q        BLS48581._r
    , test       "BLS48581T"       BLS48581T.gA       BLS48581T._h       BLS48581T._q       BLS48581T._r
    , test           "BN224"           BN224.gA           BN224._h           BN224._q           BN224._r
    , test           "BN254"           BN254.gA           BN254._h           BN254._q           BN254._r
    , test          "BN254T"          BN254T.gA          BN254T._h          BN254T._q          BN254T._r
    , test          "BN254A"          BN254A.gA          BN254A._h          BN254A._q          BN254A._r
    , test         "BN254AT"         BN254AT.gA         BN254AT._h         BN254AT._q         BN254AT._r
    , test          "BN254B"          BN254B.gA          BN254B._h          BN254B._q          BN254B._r
    , test         "BN254BT"         BN254BT.gA         BN254BT._h         BN254BT._q         BN254BT._r
    , test           "BN256"           BN256.gA           BN256._h           BN256._q           BN256._r
    , test           "BN384"           BN384.gA           BN384._h           BN384._q           BN384._r
    , test           "BN462"           BN462.gA           BN462._h           BN462._q           BN462._r
    , test          "BN462T"          BN462T.gA          BN462T._h          BN462T._q          BN462T._r
    , test           "BN512"           BN512.gA           BN512._h           BN512._q           BN512._r
    , test "BrainpoolP160R1" BrainpoolP160R1.gA BrainpoolP160R1._h BrainpoolP160R1._q BrainpoolP160R1._r
    , test "BrainpoolP160T1" BrainpoolP160T1.gA BrainpoolP160T1._h BrainpoolP160T1._q BrainpoolP160T1._r
    , test "BrainpoolP192R1" BrainpoolP192R1.gA BrainpoolP192R1._h BrainpoolP192R1._q BrainpoolP192R1._r
    , test "BrainpoolP192T1" BrainpoolP192T1.gA BrainpoolP192T1._h BrainpoolP192T1._q BrainpoolP192T1._r
    , test "BrainpoolP224R1" BrainpoolP224R1.gA BrainpoolP224R1._h BrainpoolP224R1._q BrainpoolP224R1._r
    , test "BrainpoolP224T1" BrainpoolP224T1.gA BrainpoolP224T1._h BrainpoolP224T1._q BrainpoolP224T1._r
    , test "BrainpoolP256R1" BrainpoolP256R1.gA BrainpoolP256R1._h BrainpoolP256R1._q BrainpoolP256R1._r
    , test "BrainpoolP256T1" BrainpoolP256T1.gA BrainpoolP256T1._h BrainpoolP256T1._q BrainpoolP256T1._r
    , test "BrainpoolP320R1" BrainpoolP320R1.gA BrainpoolP320R1._h BrainpoolP320R1._q BrainpoolP320R1._r
    , test "BrainpoolP320T1" BrainpoolP320T1.gA BrainpoolP320T1._h BrainpoolP320T1._q BrainpoolP320T1._r
    , test "BrainpoolP384R1" BrainpoolP384R1.gA BrainpoolP384R1._h BrainpoolP384R1._q BrainpoolP384R1._r
    , test "BrainpoolP384T1" BrainpoolP384T1.gA BrainpoolP384T1._h BrainpoolP384T1._q BrainpoolP384T1._r
    , test "BrainpoolP512R1" BrainpoolP512R1.gA BrainpoolP512R1._h BrainpoolP512R1._q BrainpoolP512R1._r
    , test "BrainpoolP512T1" BrainpoolP512T1.gA BrainpoolP512T1._h BrainpoolP512T1._q BrainpoolP512T1._r
    , test       "SECP112R1"       SECP112R1.gA       SECP112R1._h       SECP112R1._q       SECP112R1._r
    , test       "SECP112R2"       SECP112R2.gA       SECP112R2._h       SECP112R2._q       SECP112R2._r
    , test       "SECP128R1"       SECP128R1.gA       SECP128R1._h       SECP128R1._q       SECP128R1._r
    , test       "SECP128R2"       SECP128R2.gA       SECP128R2._h       SECP128R2._q       SECP128R2._r
    , test       "SECP160K1"       SECP160K1.gA       SECP160K1._h       SECP160K1._q       SECP160K1._r
    , test       "SECP160R1"       SECP160R1.gA       SECP160R1._h       SECP160R1._q       SECP160R1._r
    , test       "SECP160R2"       SECP160R2.gA       SECP160R2._h       SECP160R2._q       SECP160R2._r
    , test       "SECP192K1"       SECP192K1.gA       SECP192K1._h       SECP192K1._q       SECP192K1._r
    , test       "SECP192R1"       SECP192R1.gA       SECP192R1._h       SECP192R1._q       SECP192R1._r
    , test       "SECP224K1"       SECP224K1.gA       SECP224K1._h       SECP224K1._q       SECP224K1._r
    , test       "SECP224R1"       SECP224R1.gA       SECP224R1._h       SECP224R1._q       SECP224R1._r
    , test       "SECP256K1"       SECP256K1.gA       SECP256K1._h       SECP256K1._q       SECP256K1._r
    , test       "SECP256R1"       SECP256R1.gA       SECP256R1._h       SECP256R1._q       SECP256R1._r
    , test       "SECP384R1"       SECP384R1.gA       SECP384R1._h       SECP384R1._q       SECP384R1._r
    , test       "SECP521R1"       SECP521R1.gA       SECP521R1._h       SECP521R1._q       SECP521R1._r
    ]
  ]
