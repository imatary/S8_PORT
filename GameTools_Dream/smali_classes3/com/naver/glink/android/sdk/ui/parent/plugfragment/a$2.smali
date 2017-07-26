.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$2;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method
