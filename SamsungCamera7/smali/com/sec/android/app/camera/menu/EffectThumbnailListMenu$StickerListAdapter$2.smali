.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/StickerItem$SelectListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/samsung/android/glview/GLView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerPackageId(I)V

    return-void
.end method
