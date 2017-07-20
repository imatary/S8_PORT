.class public Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;
.super Ljava/lang/Object;
.source "NetInfoData.java"


# instance fields
.field private mBleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mConBssId:Ljava/lang/String;

.field private mConFreq:I

.field private mConSignal:I

.field private mConSsId:Ljava/lang/String;

.field private mConType:Ljava/lang/String;

.field private mInfoTime:J

.field private mLastWifiResultTime:J

.field private mWifiInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBleInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mBleInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mBleInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCellInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mCellInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mCellInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getConBssId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConBssId:Ljava/lang/String;

    return-object v0
.end method

.method public getConFreq()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConFreq:I

    return v0
.end method

.method public getConSignal()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSignal:I

    return v0
.end method

.method public getConSsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSsId:Ljava/lang/String;

    return-object v0
.end method

.method public getConType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConType:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mInfoTime:J

    return-wide v0
.end method

.method public getLastWifiResultTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mLastWifiResultTime:J

    return-wide v0
.end method

.method public getWifiInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mWifiInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mWifiInfoList:Ljava/util/List;

    return-object v0
.end method

.method public setBleInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mBleInfoList:Ljava/util/List;

    return-void
.end method

.method public setCellInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mCellInfoList:Ljava/util/List;

    return-void
.end method

.method public setConBssId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConBssId:Ljava/lang/String;

    return-void
.end method

.method public setConFreq(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConFreq:I

    return-void
.end method

.method public setConSignal(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSignal:I

    return-void
.end method

.method public setConSsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSsId:Ljava/lang/String;

    return-void
.end method

.method public setConType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConType:Ljava/lang/String;

    return-void
.end method

.method public setInfoTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mInfoTime:J

    return-void
.end method

.method public setLastWifiResultTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mLastWifiResultTime:J

    return-void
.end method

.method public setWifiInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mWifiInfoList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetInfoData { mInfoTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mInfoTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mConType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mConBssId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConBssId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mConSsId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mConFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mConSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mConSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mLastWifiResultTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mLastWifiResultTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mWifiInfoList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mWifiInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mCellInfoList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mCellInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mBleInfoList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->mBleInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
