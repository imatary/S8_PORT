.class Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$1;
.super Ljava/lang/Object;
.source "CafeJoinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView$1;->a:Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;->a(Lcom/naver/glink/android/sdk/ui/profile/CafeJoinView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
