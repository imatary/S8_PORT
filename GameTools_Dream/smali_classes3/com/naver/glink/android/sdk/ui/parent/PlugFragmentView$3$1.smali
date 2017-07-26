.class Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3$1;
.super Ljava/lang/Object;
.source "PlugFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$3;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/c;->c(Landroid/content/Context;)V

    return-void
.end method
