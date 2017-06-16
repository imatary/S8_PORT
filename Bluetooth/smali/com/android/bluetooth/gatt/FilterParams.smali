.class public Lcom/android/bluetooth/gatt/FilterParams;
.super Ljava/lang/Object;
.source "FilterParams.java"


# instance fields
.field private mClientIf:I

.field private mDelyMode:I

.field private mFeatSeln:I

.field private mFiltIndex:I

.field private mFiltLogicType:I

.field private mFoundTimeOut:I

.field private mFoundTimeOutCnt:I

.field private mListLogicType:I

.field private mLostTimeOut:I

.field private mNumOfTrackEntries:I

.field private mRssiHighValue:I

.field private mRssiLowValue:I


# direct methods
.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/gatt/FilterParams;->mClientIf:I

    iput p2, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltIndex:I

    iput p3, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFeatSeln:I

    iput p4, p0, Lcom/android/bluetooth/gatt/FilterParams;->mListLogicType:I

    iput p5, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltLogicType:I

    iput p6, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiHighValue:I

    iput p7, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiLowValue:I

    iput p8, p0, Lcom/android/bluetooth/gatt/FilterParams;->mDelyMode:I

    iput p9, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOut:I

    iput p10, p0, Lcom/android/bluetooth/gatt/FilterParams;->mLostTimeOut:I

    iput p11, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOutCnt:I

    iput p12, p0, Lcom/android/bluetooth/gatt/FilterParams;->mNumOfTrackEntries:I

    return-void
.end method


# virtual methods
.method public getClientIf()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mClientIf:I

    return v0
.end method

.method public getDelyMode()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mDelyMode:I

    return v0
.end method

.method public getFeatSeln()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFeatSeln:I

    return v0
.end method

.method public getFiltIndex()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltIndex:I

    return v0
.end method

.method public getFiltLogicType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFiltLogicType:I

    return v0
.end method

.method public getFoundTimeOutCnt()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOutCnt:I

    return v0
.end method

.method public getFoundTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mFoundTimeOut:I

    return v0
.end method

.method public getListLogicType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mListLogicType:I

    return v0
.end method

.method public getLostTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mLostTimeOut:I

    return v0
.end method

.method public getNumOfTrackEntries()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mNumOfTrackEntries:I

    return v0
.end method

.method public getRSSIHighValue()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiHighValue:I

    return v0
.end method

.method public getRSSILowValue()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/FilterParams;->mRssiLowValue:I

    return v0
.end method
