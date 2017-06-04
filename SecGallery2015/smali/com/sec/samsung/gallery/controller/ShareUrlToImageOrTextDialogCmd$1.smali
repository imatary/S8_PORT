.class Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;
.super Ljava/lang/Object;
.source "ShareUrlToImageOrTextDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "DISMISS_CONVERSION_DIALOG"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
