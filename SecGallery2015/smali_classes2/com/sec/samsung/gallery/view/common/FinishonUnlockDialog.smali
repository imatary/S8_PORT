.class public Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;
.super Ljava/lang/Object;
.source "FinishonUnlockDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FinishonUnlockDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinishonUnlockDialog:Landroid/app/AlertDialog;

.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFlags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public showFinishonUnlockDialog()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0488

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a02f4

    new-instance v4, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFlags:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mFinishonUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
