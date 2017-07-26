.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;
.super Ljava/lang/Object;
.source "FragmentViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;->b:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/a$b$3;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/FragmentView;->setVisibility(I)V

    goto :goto_0
.end method
