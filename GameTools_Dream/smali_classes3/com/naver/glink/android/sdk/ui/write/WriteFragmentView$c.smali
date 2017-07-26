.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;
.super Ljava/lang/Object;
.source "WriteFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->g(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Z)V

    goto :goto_0
.end method
