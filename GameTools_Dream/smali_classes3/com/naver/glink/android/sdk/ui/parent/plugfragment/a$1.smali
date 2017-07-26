.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$1;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;->a(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a;ILcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V

    goto :goto_0
.end method
