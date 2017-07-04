.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;
.super Ljava/lang/Object;
.source "GlComposeChannelNotificationObject.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 0

    return-void
.end method

.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$2;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method
