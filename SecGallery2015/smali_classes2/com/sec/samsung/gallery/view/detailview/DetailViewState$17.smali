.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private downloadNearby(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6009"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v4, 0x0

    aget-object v1, v2, v4

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->download(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private handleMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;Z)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, -0x1

    array-length v3, v0

    if-ne v3, v5, :cond_1

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v3, v0

    if-ne v3, v6, :cond_2

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v0, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "DetailViewState"

    const-string/jumbo v4, "Invalid param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    if-ne v2, v6, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3, v2, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->getLat()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->getLog()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->getLat()Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/RecoverDataMPSM;->getLog()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setLatLng(Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3, v2, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;II)V

    goto :goto_1
.end method

.method private handleMoreInfoSearchEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastOptionView(Z)V

    :cond_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "SEARCH_CATEGORY"

    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "SEARCH_SUB_CATEGORY"

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "SEARCH_TRANSLATED_NAME"

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "SEARCH_LOCATION_TYPE"

    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "SEARCH_PERSON_NAME"

    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleNormalMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;Z)V

    return-void
.end method

.method private handleRestartMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;Z)V

    return-void
.end method

.method private onDeviceRemoved(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->isDeviceRemoved(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DetailViewState"

    const-string/jumbo v3, "top mediaset is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    const-string/jumbo v2, "nearby"

    const-string/jumbo v3, "finish Detailview state()!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSystemUiVisibilityChange(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    xor-int v0, v1, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22502(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->updateLayout()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setNavigationPadding()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setIsDisplayChanged(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->requestLayout()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->initView()V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setMoreInfoContainerMargin(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 22

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v18, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v18, :pswitch_data_0

    const-string/jumbo v18, "DetailViewState"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "is not handled!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v19, "EXIT_SELECTION_MODE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v19, "EXIT_BURST_SHOT_SELECTION_MODE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v19, "DOWNLOAD_NEARBY"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v19, "DOWNLOAD_CLOUDBY"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v19, "UNLOCK_TOUCH"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v19, "MEDIA_EJECT"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v19, "MOREINFO_EVENT"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v19, "RESTART_MOREINFO_EVENT"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v19, "MOREINFO_SEARCH_EVENT"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v19, "DEVICE_DISCONNECTED"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v19, "SECRET_MODE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v19, "ACTION_DELETE_CONFIRM"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v19, "SHARE_DIALOG_HIDDEN"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v19, "DELETE_BURST_SHOT_ITEM"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v19, "SHOW_DEVICE_TO_TV_ICON"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v19, "SHOW_DEVICE_TO_TV_DISCONNECT_ICON"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v19, "CHOOSE_SHARE_DIALOG"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v19, "RESTART_CHOOSE_SHARE_DIALOG"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v19, "RESTART_VIDEO_PLAY"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v19, "EVENT_DOWNLOAD_PLAY_FROM_EVENTVIEW"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v19, "UPDATE_MENU"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v19, "UPDATE_HIDE_TIME"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v19, "DISMISS_CONVERSION_DIALOG"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v19, "SHOW_BAR_FOR_DETAIL_VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v19, "SYSTEM_UI_VISIBILITY_CHANGE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x18

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$17900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    new-instance v19, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    new-instance v19, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->setSceretBoxItem(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->setIsBurstShowSaving(Z)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->setIsBurstShowSaving(Z)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->downloadNearby(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v6, v18

    check-cast v6, [Ljava/lang/Object;

    const/16 v18, 0x0

    aget-object v12, v6, v18

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$702(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setLockTouchEvent(Z)V

    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    check-cast v18, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCount()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v18

    if-lez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isShowDeleteDialog()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleNormalMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleRestartMoreInfoEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleMoreInfoSearchEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->onDeviceRemoved(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/Object;

    const/16 v18, 0x0

    aget-object v18, v16, v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    aget-object v18, v16, v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    instance-of v0, v5, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    move/from16 v18, v0

    if-nez v18, :cond_9

    instance-of v0, v5, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x70

    const-wide/16 v20, 0x32

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_b
    const/16 v17, 0x0

    goto :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v18

    if-eqz v18, :cond_f

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v8

    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteEventShareItem(Landroid/content/Context;ILcom/sec/android/gallery3d/ui/SelectionManager;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v18

    const-string/jumbo v19, "EXIT_SELECTION_MODE"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v20, "com.sec.android.widget.myeventwidget.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v18

    if-eqz v18, :cond_12

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v8

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->deleteChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$20900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v7, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->deleteEventShareItem(Landroid/content/Context;ILcom/sec/android/gallery3d/ui/SelectionManager;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v18

    const-string/jumbo v19, "EXIT_SELECTION_MODE"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x7b

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$19400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x1194

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/Model;->requestBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v4, v18

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v19

    const/16 v18, 0x0

    aget-object v18, v4, v18

    check-cast v18, Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog(Landroid/net/Uri;)V

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->onItemSelected(I)Z

    goto/16 :goto_1

    :pswitch_11
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v15, v18

    check-cast v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aget-object v9, v15, v18

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    instance-of v0, v10, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v18

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZLandroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v20

    sget v21, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_PLAY_FROM_EVENTVIEW:I

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$11402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v19, v0

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->onSystemUiVisibilityChange(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x79a86af2 -> :sswitch_7
        -0x7726659c -> :sswitch_4
        -0x743a0760 -> :sswitch_11
        -0x71639864 -> :sswitch_f
        -0x68856f18 -> :sswitch_12
        -0x63e2785d -> :sswitch_13
        -0x5d19eb8b -> :sswitch_3
        -0x4de5584c -> :sswitch_15
        -0x4987038a -> :sswitch_5
        -0x3946535e -> :sswitch_18
        -0x215c86d9 -> :sswitch_a
        -0x96ac5ea -> :sswitch_2
        -0x67a6604 -> :sswitch_16
        -0x1b24d25 -> :sswitch_1
        0x7d6ea25 -> :sswitch_d
        0x142f4135 -> :sswitch_b
        0x1f628ef0 -> :sswitch_10
        0x27d8e984 -> :sswitch_9
        0x4de94c01 -> :sswitch_c
        0x592a4cbe -> :sswitch_6
        0x5b7fb2af -> :sswitch_17
        0x5ece09d7 -> :sswitch_0
        0x5fe52f15 -> :sswitch_14
        0x753a9319 -> :sswitch_e
        0x7f58325f -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DOWNLOAD_NEARBY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DOWNLOAD_CLOUDBY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UNLOCK_TOUCH"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "MOREINFO_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "RESTART_MOREINFO_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "MOREINFO_SEARCH_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "DEVICE_DISCONNECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ACTION_DELETE_CONFIRM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "SHARE_DIALOG_HIDDEN"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "DELETE_BURST_SHOT_ITEM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SHOW_DEVICE_TO_TV_ICON"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SHOW_DEVICE_TO_TV_DISCONNECT_ICON"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "CHOOSE_SHARE_DIALOG"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "RESTART_VIDEO_PLAY"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "RESTART_CHOOSE_SHARE_DIALOG"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "EVENT_DOWNLOAD_PLAY_FROM_EVENTVIEW"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "EXIT_BURST_SHOT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "UPDATE_HIDE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "DISMISS_CONVERSION_DIALOG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "SHOW_BAR_FOR_DETAIL_VIEW"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method
