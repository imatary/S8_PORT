.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->refreshTab()V

    return-void
.end method
