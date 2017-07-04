.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$1;
.super Ljava/lang/Object;
.source "MoreInfoLocationEditActivityChn.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    const-string/jumbo v0, "MoreInfoLocEditActivChn"

    const-string/jumbo v1, "New location found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
