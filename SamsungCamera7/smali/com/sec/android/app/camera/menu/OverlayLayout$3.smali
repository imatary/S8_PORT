.class Lcom/sec/android/app/camera/menu/OverlayLayout$3;
.super Landroid/content/BroadcastReceiver;
.source "OverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string v3, "camera.action.ACTION_CAMERA_RESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$3;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$102(Lcom/sec/android/app/camera/menu/OverlayLayout;Z)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x50458baf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
