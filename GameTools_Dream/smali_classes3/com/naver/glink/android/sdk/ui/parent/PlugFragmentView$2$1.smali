.class Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2$1;
.super Ljava/lang/Object;
.source "PlugFragmentView.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2$1;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView$2;->a:Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->c()V

    return-void
.end method
