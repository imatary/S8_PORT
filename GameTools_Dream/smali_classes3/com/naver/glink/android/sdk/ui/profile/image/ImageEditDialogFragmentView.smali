.class public Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "ImageEditDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;,
        Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

.field private b:Ljava/lang/String;

.field private c:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

.field private q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->setArguments(Landroid/os/Bundle;)V

    iput-object p1, v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    return-object v1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->m:Landroid/view/View;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->photo_upload_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->dismiss()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->setBitmapImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->e()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$8;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->e()V

    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->c:I

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->g:I

    return v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$b;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    return-object v0
.end method

.method private setBitmapImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_image_edit:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$color;->viewer_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->findImageType(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->getAspectX()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->c:I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;->getAspectY()I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->g:I

    sget v0, Lcom/naver/glink/android/sdk/R$id;->layoutBg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->h:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->layoutImageEdit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->i:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->imgDrawingPicture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->p:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->setType(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView$ImageType;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->h:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvSetCrop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->j:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvDoCrop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->k:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvCancelCrop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->l:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvSave:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->m:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvClose:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->n:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->tvRotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->o:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->layoutBottomCropMenu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->layoutBottomMenu:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$id;->layoutTopMenu:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->j:Landroid/view/View;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->k:Landroid/view/View;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->l:Landroid/view/View;

    new-instance v4, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->m:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->n:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$5;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$5;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->o:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$6;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$6;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$7;-><init>(Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->dismiss()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->dismiss()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->q:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView$a;->a()V

    :cond_0
    return-void
.end method

.method public d_()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditDialogFragmentView;->a:Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/image/ImageEditView;->g()V

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d_()V

    return-void
.end method
