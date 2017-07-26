.class Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;
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

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/login/LoginHelper;->a()Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->logout(Landroid/content/Context;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;)V

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
