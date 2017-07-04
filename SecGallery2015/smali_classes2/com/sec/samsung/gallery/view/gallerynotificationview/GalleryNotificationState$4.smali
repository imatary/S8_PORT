.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "GalleryNotificationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SYSTEM_UI_VISIBILITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$4;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V

    :cond_0
    return-void
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method
