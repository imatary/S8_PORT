.class Lcom/naver/glink/android/sdk/ui/articles/a$1;
.super Ljava/lang/Object;
.source "ArticlesAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/articles/a;->a(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/articles/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/articles/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/articles/a$1;->a:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$1;->a:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->a(Lcom/naver/glink/android/sdk/ui/articles/a;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v0, p2, p3

    add-int/lit8 v0, v0, 0xa

    if-ge p4, v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/articles/a$1;->a:Lcom/naver/glink/android/sdk/ui/articles/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/articles/a;->b(Lcom/naver/glink/android/sdk/ui/articles/a;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
