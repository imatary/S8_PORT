.class public Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;
.super Ljava/lang/Object;
.source "WifiInfoData.java"


# instance fields
.field private mBssId:Ljava/lang/String;

.field private mCapabilities:Ljava/lang/String;

.field private mFrequency:I

.field private mRemembered:Z

.field private mSignal:I

.field private mSnr:I

.field private mSsId:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBssId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mBssId:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mFrequency:I

    return v0
.end method

.method public getRemembered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mRemembered:Z

    return v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSignal:I

    return v0
.end method

.method public getSsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSsId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mTimeStamp:J

    return-wide v0
.end method

.method public setBssId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mBssId:Ljava/lang/String;

    return-void
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mCapabilities:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mFrequency:I

    return-void
.end method

.method public setRemembered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mRemembered:Z

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSignal:I

    return-void
.end method

.method public setSsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSsId:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiInfoData { mSsId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mBssId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mTimeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mFrequency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mCapabilities : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mCapabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mRemembered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mRemembered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSnr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->mSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
