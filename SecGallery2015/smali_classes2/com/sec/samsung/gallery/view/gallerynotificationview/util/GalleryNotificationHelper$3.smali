.class final Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$3;
.super Ljava/lang/Object;
.source "GalleryNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->updateEventBadgeCount(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$3;->val$mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$3;->val$mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(I)V

    return-void
.end method
