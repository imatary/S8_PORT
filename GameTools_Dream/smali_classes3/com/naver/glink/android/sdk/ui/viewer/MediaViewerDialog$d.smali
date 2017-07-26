.class Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;
.super Landroid/support/v4/view/PagerAdapter;
.source "MediaViewerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/naver/glink/android/sdk/ui/viewer/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)V

    return-void
.end method

.method private a(Lcom/naver/glink/android/sdk/ui/viewer/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->f(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->a(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Z)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method a(I)V
    .locals 7

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    if-eqz v0, :cond_0

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v5

    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v6}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v3

    invoke-interface {v0, v4, v5, v3, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method

.method b()Z
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->g(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    instance-of v0, p3, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    invoke-interface {p3}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->b()V

    invoke-interface {p3}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isPhoto()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_photo_media_viewer:I

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->isPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/b;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/b;-><init>(Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->e(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/a;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$d;->a:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a(I)Lcom/naver/glink/android/sdk/api/response/ArticleMedia;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V

    :cond_0
    return-object v0

    :cond_1
    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_video_media_viewer:I

    invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/d;

    invoke-direct {v1, v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p2, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/naver/glink/android/sdk/ui/viewer/b/a;

    invoke-interface {p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/a;->a()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
