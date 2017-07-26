.class Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;
.super Ljava/lang/Object;
.source "PlugListFragmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
