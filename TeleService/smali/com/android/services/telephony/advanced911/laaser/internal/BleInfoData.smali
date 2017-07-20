.class public Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;
.super Ljava/lang/Object;
.source "BleInfoData.java"


# instance fields
.field private mBleAdv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;",
            ">;"
        }
    .end annotation
.end field

.field private mBssId:Ljava/lang/String;

.field private mSignal:I

.field private mTimeStamp:J

.field private mUuId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBleAdv()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBleAdv:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBleAdv:Ljava/util/List;

    return-object v0
.end method

.method public getBssId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBssId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mSignal:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mTimeStamp:J

    return-wide v0
.end method

.method public getUuId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mUuId:Ljava/lang/String;

    return-object v0
.end method

.method public setBleAdv(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBleAdv:Ljava/util/List;

    return-void
.end method

.method public setBssId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBssId:Ljava/lang/String;

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mSignal:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BleInfoData { mUuId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mUuId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mBssId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mTimeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mBleAdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->mBleAdv:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
