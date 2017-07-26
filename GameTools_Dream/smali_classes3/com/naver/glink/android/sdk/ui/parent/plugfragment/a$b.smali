.class public Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# direct methods
.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$2;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$2;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    return-object p0
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Ljava/lang/String;Landroid/view/ViewGroup;I)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 6

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;Landroid/view/ViewGroup;I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()V
    .locals 3

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$6;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->d(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$4;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$4;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
