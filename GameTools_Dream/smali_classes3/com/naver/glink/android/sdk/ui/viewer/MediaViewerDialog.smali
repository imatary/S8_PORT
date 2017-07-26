.class public Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;
.super Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;
.source "MediaViewerDialog.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;,
        Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;,
        Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$a;,
        Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;,
        Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;
    }
.end annotation


# instance fields
.field private a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

.field private b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

.field private c:I

.field private g:Z

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

.field private j:Landroid/view/View;

.field private k:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/ui/viewer/a/c;I)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    iput-object p2, v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    iput p3, v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$1;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    invoke-interface {v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    :goto_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->onPageSelected(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$id;->overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Landroid/view/View;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->k:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    return v0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b()Z

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private getCurrentItem()Lcom/naver/glink/android/sdk/api/response/ArticleMedia;
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->l()V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->dismiss()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->getCurrentItem()Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/media/AllMediaFragmentView$a;-><init>(Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_media_viewer:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->g()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$2;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Landroid/view/View;)V

    const/4 v0, -0x1

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    invoke-interface {v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    iget v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c:I

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->BANNER:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->g:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x3f19999a    # 0.6f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000400

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$a;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i()V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    iget v1, p1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    sget-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$3;->a:[I

    iget-object v1, p1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->g()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->h()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->l()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/a$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->h:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->b()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->h()V

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/a/c$a;)V

    return-void
.end method

.method public d_()V
    .locals 1

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->d_()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, Lcom/naver/glink/android/sdk/a/g;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i()V

    :cond_0
    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/DialogFragmentView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->b:Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    invoke-interface {v0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->k:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;

    invoke-virtual {v1, p1, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->a(ILcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->type:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    sget-object v1, Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;->VIDEO:Lcom/naver/glink/android/sdk/api/response/ArticleMedia$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$b;-><init>(I)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/a;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->i:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;

    invoke-virtual {v0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a(I)V

    return-void
.end method
