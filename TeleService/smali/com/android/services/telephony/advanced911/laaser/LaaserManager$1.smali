.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$1;
.super Ljava/lang/Object;
.source "LaaserManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->setPressure(F)V

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->setPressureTime(J)V

    return-void

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->setAmbientTemperature(F)V

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->setAmbientTemperatureTime(J)V

    return-void

    :cond_1
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    return-void
.end method
