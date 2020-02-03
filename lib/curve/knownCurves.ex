defmodule EllipticCurve.Curve.KnownCurves do
  @moduledoc """
  Describes the elliptic curves supported by the package
  """

  alias EllipticCurve.Curve.Data, as: Data

  @secp256k1Oid [1, 3, 132, 0, 10]
  @secp256k1name :secp256k1

  @prime256v1 [1, 2, 840, 10045, 3, 1, 7]
  @prime256v1name :prime256v1

  def getCurveByOid(oid) do
    case oid do
      @secp256k1Oid -> secp256k1()
      @prime256v1 -> prime256v1()
    end
  end

  def getCurveByName(name) do
    case name do
      @secp256k1name -> secp256k1()
      @prime256v1name -> prime256v1()
    end
  end

  def secp256k1() do
    %Data{
      name: @secp256k1name,
      A: 0x0000000000000000000000000000000000000000000000000000000000000000,
      B: 0x0000000000000000000000000000000000000000000000000000000000000007,
      P: 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F,
      N: 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141,
      Gx: 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798,
      Gy: 0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8,
      oid: @secp256k1Oid
    }
  end

  def prime256v1() do
    %Data{
      name: @prime256v1name,
      A: 0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC,
      B: 0x5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B,
      P: 0xFFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF,
      N: 0xFFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551,
      Gx: 0x6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296,
      Gy: 0x4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5,
      oid: @prime256v1
    }
  end
end
