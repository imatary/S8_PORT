.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlComposeChannelNotificationObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

.field final synthetic val$this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;->val$this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Lcom/sec/android/gallery3d/glcore/GlImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject$1;->this$1:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject$NotificationImageObject;Lcom/sec/android/gallery3d/glcore/GlImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
