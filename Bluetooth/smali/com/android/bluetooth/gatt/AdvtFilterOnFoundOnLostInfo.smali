.class public Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
.super Ljava/lang/Object;
.source "AdvtFilterOnFoundOnLostInfo.java"


# instance fields
.field private mAddrType:I

.field private mAddress:Ljava/lang/String;

.field private mAdvInfoPresent:I

.field private mAdvPkt:[B

.field private mAdvPktLen:I

.field private mAdvState:I

.field private mClientIf:I

.field private mFiltIndex:I

.field private mRssiValue:I

.field private mScanRsp:[B

.field private mScanRspLen:I

.field private mTimeStamp:I

.field private mTxPower:I


# direct methods
.method public constructor <init>(II[BI[BIIILjava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    iput p2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    iput-object p3, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    iput p4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    iput-object p5, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    iput p6, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    iput p7, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    iput p8, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    iput-object p9, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    iput p10, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    iput p11, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    iput p12, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    iput p13, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAddrType:I

    return v0
.end method

.method public getAdvInfoPresent()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvInfoPresent:I

    return v0
.end method

.method public getAdvPacketData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    return-object v0
.end method

.method public getAdvPacketLen()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPktLen:I

    return v0
.end method

.method public getAdvState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvState:I

    return v0
.end method

.method public getClientIf()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mClientIf:I

    return v0
.end method

.method public getFiltIndex()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mFiltIndex:I

    return v0
.end method

.method public getRSSIValue()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mRssiValue:I

    return v0
.end method

.method public getResult()[B
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v2

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    array-length v2, v2

    :goto_0
    add-int v1, v4, v2

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mAdvPkt:[B

    array-length v4, v4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    array-length v5, v5

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-object v0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getScanRspData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRsp:[B

    return-object v0
.end method

.method public getScanRspLen()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mScanRspLen:I

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTimeStamp:I

    return v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->mTxPower:I

    return v0
.end method
