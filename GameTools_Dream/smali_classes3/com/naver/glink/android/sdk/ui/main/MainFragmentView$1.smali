.class Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;
.super Ljava/lang/Object;
.source "MainFragmentView.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->c:Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->c:Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->c:Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->c:Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView$1;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
