.class public Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;
.super Ljava/lang/Object;
.source "CellInfoData.java"


# instance fields
.field private mCellId:I

.field private mEarFcn:I

.field private mIsRegistered:Z

.field private mMcc:I

.field private mMnc:I

.field private mPcId:I

.field private mSignal:I

.field private mTaclac:I

.field private mTech:Ljava/lang/String;

.field private volatile mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellId()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mCellId:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMnc:I

    return v0
.end method

.method public getPcId()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mPcId:I

    return v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mSignal:I

    return v0
.end method

.method public getTaclac()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTaclac:I

    return v0
.end method

.method public getTech()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTech:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTimeStamp:J

    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mIsRegistered:Z

    return v0
.end method

.method public setCellId(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mCellId:I

    return-void
.end method

.method public setMcc(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMcc:I

    return-void
.end method

.method public setMnc(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMnc:I

    return-void
.end method

.method public setPcId(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mPcId:I

    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mIsRegistered:Z

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mSignal:I

    return-void
.end method

.method public setTaclac(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTaclac:I

    return-void
.end method

.method public setTech(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTech:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTimeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CellInfoData { mTech : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mTimeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mIsRegistered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mIsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mMcc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mMnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mTaclac : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mTaclac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mCellId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mCellId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mPcId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mPcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mEarFcn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->mEarFcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
