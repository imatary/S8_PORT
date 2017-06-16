.class Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mLastLocation:Landroid/location/Location;

.field mValidOfGPS:I

.field mValidOfNetwork:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mLastLocation:Landroid/location/Location;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "StickerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mValidOfGPS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mValidOfNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    if-ne v3, v5, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc81

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->reset()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "StickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged - status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - provider["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    :cond_0
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "StickerFragment"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfGPS:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$LocationListener;->mValidOfNetwork:I

    return-void
.end method
