.class Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;
.super Ljava/lang/Object;
.source "ShareRetryErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->createFailDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3088"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v1

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mWidth:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->startShareRetryProgress(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->refreshShareProgress()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
