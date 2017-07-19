.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/EffectItem$DeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2402(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2502(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->uninstallExternalEffectPackage(Ljava/lang/String;I)V

    const-string v0, "5053"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method
