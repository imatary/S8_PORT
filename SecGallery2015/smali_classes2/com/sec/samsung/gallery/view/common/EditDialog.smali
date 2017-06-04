.class public Lcom/sec/samsung/gallery/view/common/EditDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "EditDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EditDialog"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EditDialog;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/EditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EditDialog;->startMoreService()V

    return-void
.end method

.method private createDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a032c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    const v3, 0x7f0a032d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0131

    new-instance v3, Lcom/sec/samsung/gallery/view/common/EditDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/EditDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/EditDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/common/EditDialog$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/EditDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/EditDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method private startMoreService()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "samsungapps://ProductDetail/com.sec.android.mimage.photoretouching"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mCtx:Landroid/content/Context;

    const v3, 0x7f0a0029

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v2, "EditDialog"

    const-string/jumbo v3, "There is problem in Start servie"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EditDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
