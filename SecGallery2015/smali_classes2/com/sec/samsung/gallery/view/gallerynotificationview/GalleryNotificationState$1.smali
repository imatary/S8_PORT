.class Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$1;
.super Ljava/lang/Object;
.source "GalleryNotificationState.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->createNlgRequest()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
