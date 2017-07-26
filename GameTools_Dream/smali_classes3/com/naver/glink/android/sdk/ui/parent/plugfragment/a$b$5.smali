.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v3, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-direct {v2, v3, v4, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;-><init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$5;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->d:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$c;->a()V

    goto :goto_0
.end method
