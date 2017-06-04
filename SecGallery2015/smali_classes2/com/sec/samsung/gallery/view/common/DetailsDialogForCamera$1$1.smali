.class Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;
.super Ljava/lang/Object;
.source "DetailsDialogForCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;

.field final synthetic val$histogram:Landroid/graphics/Bitmap;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->val$thumb:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->val$histogram:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->this$1:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->val$thumb:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera$1$1;->val$histogram:Landroid/graphics/Bitmap;

    # invokes: Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->onThumbnailRequested(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;->access$200(Lcom/sec/samsung/gallery/view/common/DetailsDialogForCamera;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
