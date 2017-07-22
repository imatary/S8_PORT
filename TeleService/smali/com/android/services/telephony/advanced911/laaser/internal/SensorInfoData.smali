.class public Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;
.super Ljava/lang/Object;
.source "SensorInfoData.java"


# instance fields
.field private mAmbientTemperature:F

.field private mAmbientTemperatureTime:J

.field private mHumidity:F

.field private mHumidityTime:J

.field private mPressure:F

.field private mPressureTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const v0, -0x3b864000    # -999.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressure:F

    iput-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressureTime:J

    iput v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperature:F

    iput-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperatureTime:J

    iput v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mHumidity:F

    iput-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mHumidityTime:J

    return-void
.end method


# virtual methods
.method public getAmbientTemperature()F
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperature:F

    return v0
.end method

.method public getAmbientTemperatureTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperatureTime:J

    return-wide v0
.end method

.method public getPressure()F
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressure:F

    return v0
.end method

.method public getPressureTime()F
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressureTime:J

    long-to-float v0, v0

    return v0
.end method

.method public setAmbientTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperature:F

    return-void
.end method

.method public setAmbientTemperatureTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperatureTime:J

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressure:F

    return-void
.end method

.method public setPressureTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressureTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SensorInfoData { mPressure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mPressureTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mPressureTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mAmbientTemperature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mAmbientTemperatureTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mAmbientTemperatureTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mHumidity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mHumidity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mHumidityTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->mHumidityTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
