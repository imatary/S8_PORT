.class Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;
.super Ljava/lang/Object;
.source "ShareUrlToImageOrTextDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/controller/SoundScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->stop()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareImageDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->showShareWebLinkDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShareUrlToImageOrTextDialogCmd;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method