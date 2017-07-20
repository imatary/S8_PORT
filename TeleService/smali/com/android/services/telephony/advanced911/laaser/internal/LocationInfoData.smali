.class public Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;
.super Ljava/lang/Object;
.source "LocationInfoData.java"


# instance fields
.field private volatile mLastKnown:Z

.field private volatile mLocation:Landroid/location/Location;

.field private volatile mLocationTime:J

.field private volatile mPassiveUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastKnown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLastKnown:Z

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPassiveUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mPassiveUpdate:Z

    return v0
.end method

.method public setLastKnown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLastKnown:Z

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setLocationTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLocationTime:J

    return-void
.end method

.method public setPassiveUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mPassiveUpdate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocationInfoData { mLocationTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLocationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mLastKnown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLastKnown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mPassiveUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mPassiveUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / mLocation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
