.class public Lcom/sec/samsung/gallery/view/common/Image360Dialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "Image360Dialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Image360Dialog"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mCtx:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->createDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/Image360Dialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->startMoreService()V

    return-void
.end method

.method private createDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0862

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0131

    new-instance v3, Lcom/sec/samsung/gallery/view/common/Image360Dialog$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/Image360Dialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/Image360Dialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/common/Image360Dialog$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/common/Image360Dialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/Image360Dialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method private startMoreService()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "samsungapps://ProductDetail/com.samsung.android.gear360viewer"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mCtx:Landroid/content/Context;

    const v3, 0x7f0a0029

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v2, "Image360Dialog"

    const-string/jumbo v3, "There is problem in Start servie"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
