.class public Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;
.super Ljava/lang/Object;
.source "ShareRetryErrorDialog.java"


# instance fields
.field private mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    return-object v0
.end method


# virtual methods
.method public createFailDialog(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a042f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0376

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$1;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0080

    new-instance v2, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog$2;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ShareRetryErrorDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
