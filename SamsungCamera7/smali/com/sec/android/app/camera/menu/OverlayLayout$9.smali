.class Lcom/sec/android/app/camera/menu/OverlayLayout$9;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->showStickerSoundMuteButton()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerSoundMute(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$600(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f02027a

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f02027d

    :goto_2
    invoke-virtual {v3, v0, v2, v1, v1}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$600(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    const-string v0, "5054"

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$500(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x1

    :goto_4
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x7f02027b

    goto :goto_1

    :cond_2
    const v2, 0x7f02027c

    goto :goto_2

    :cond_3
    const v0, 0x7f09004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_4
.end method
