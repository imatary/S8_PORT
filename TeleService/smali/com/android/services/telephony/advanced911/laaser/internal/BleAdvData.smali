.class public Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;
.super Ljava/lang/Object;
.source "BleAdvData.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private mAdv:[B

.field private mAdvFlags:I

.field private mSignal:I

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdv()[B
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdv:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdv:[B

    return-object v0
.end method

.method public getAdvFlags()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdvFlags:I

    return v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mSignal:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mTimeStamp:J

    return-wide v0
.end method

.method public setAdv([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdv:[B

    return-void
.end method

.method public setAdvFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdvFlags:I

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mSignal:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BleAdvData { mTimeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mAdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdv:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mAdvFlags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->mAdvFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
