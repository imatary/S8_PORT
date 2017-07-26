.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v2, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->b:Ljava/util/Vector;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    if-ne v3, v4, :cond_2

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method
