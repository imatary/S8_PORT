.class public Lcom/naver/glink/android/sdk/ui/viewer/b/d;
.super Ljava/lang/Object;
.source "ViewerVideoViewHolder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/viewer/b/a;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a:Landroid/view/View;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;)Lcom/naver/glink/android/sdk/ui/viewer/b/c;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->e:Z

    return p1
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->d:Z

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->d:Z

    invoke-static {p0}, Lcom/naver/glink/android/sdk/a/a;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-virtual {p3, v3}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getErrorMessage(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->d()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v1, p3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->vid:Ljava/lang/String;

    iget-object v2, p3, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->logoImage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->c()Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;

    invoke-direct {v2, p0, v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;)V

    invoke-virtual {v1, v2}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Lcom/naver/glink/android/sdk/ui/viewer/b/c$a;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;

    invoke-direct {v1, p0, p2}, Lcom/naver/glink/android/sdk/ui/viewer/b/d$2;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/b/d;Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setOnVideoCloseClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->f:Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-virtual {v0, v3}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->b()V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->e()V

    goto :goto_1
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    iget-object v0, p1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$c;->a:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;->DRAGGING:Lcom/naver/glink/android/sdk/ui/widget/dragviewer/DragView$DragState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->c:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->f:Z

    return-void
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->e()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/d;->e:Z

    return v0
.end method
