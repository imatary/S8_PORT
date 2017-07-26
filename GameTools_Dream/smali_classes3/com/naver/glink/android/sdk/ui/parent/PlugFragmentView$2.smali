.class Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;
.super Lcom/naver/glink/android/sdk/a/o;
.source "PlugFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2$1;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/login/a$b;->a()V

    :cond_0
    return-void
.end method
