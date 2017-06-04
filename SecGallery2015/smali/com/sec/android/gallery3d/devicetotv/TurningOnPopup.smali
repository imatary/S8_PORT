.class Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;
.super Ljava/lang/Object;
.source "TurningOnPopup.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createDialog()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040110

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$1;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$1;-><init>(Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$2;-><init>(Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    new-instance v4, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$3;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup$3;-><init>(Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;)V

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->createDialog()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/devicetotv/TurningOnPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
