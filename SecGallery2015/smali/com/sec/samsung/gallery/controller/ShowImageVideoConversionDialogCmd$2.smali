.class Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;
.super Ljava/lang/Object;
.source "ShowImageVideoConversionDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)Landroid/content/Context;

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
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showShareDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->convertMultiFormatToMP4()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$300(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
