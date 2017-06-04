.class public Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "NetworkWarningDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkWarningDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mEvent:Lcom/sec/samsung/gallery/core/Event;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->createDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mEvent:Lcom/sec/samsung/gallery/core/Event;

    return-object v0
.end method

.method private createDialog()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a04ea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0080

    new-instance v5, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog$3;-><init>(Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0a025e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
