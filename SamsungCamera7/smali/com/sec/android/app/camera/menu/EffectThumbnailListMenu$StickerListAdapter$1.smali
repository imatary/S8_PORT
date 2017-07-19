.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onStickerMenuSelect(I)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
